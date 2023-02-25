/**
 * This script will take a radio data XML file and output scheduling information
 * about it. Right now it only outputs a subset of TV broadcast data, but it
 * could be easily adapted to output radio or other data.
 *
 * You can call this script like so (after running npm install):
 *
 * node parse-radio-data.mjs C:\path\to\the\file\radio-data-file.xml
 * node parse-radio-data.mjs /path/to/the/file/radio-data-file.xml
 */

import { fileURLToPath } from 'node:url';
import { readFile } from 'node:fs/promises';
import { resolve as resolvePath } from 'node:path';
import { parseStringPromise } from 'xml2js';
import { Console } from 'node:console';
import { Transform } from 'node:stream';

const SkillInteractions = {
  SPR: 'sprinting',
  LFT: 'lightfooted',
  NIM: 'nimble',
  SNE: 'sneaking',
  BAA: 'axe',
  BUA: 'blunt',
  CRP: 'carpentry',
  COO: 'cooking',
  FRM: 'farming',
  DOC: 'doctor',
  ELC: 'electricity',
  MTL: 'metalworking',
  AIM: 'aiming',
  REL: 'reloading',
  FIS: 'fishing',
  TRA: 'trapping',
  FOR: 'foraging',
  TAI: 'tailoring',
  MEC: 'mechanics',
  CMB: 'combat',
  SPE: 'spear',
  SBU: 'smallBlunt',
  LBA: 'longBlade',
  SBA: 'smallBlade'
};

const StatInteractions = {
  ANG: 'anger',
  BOR: 'boredom',
  END: 'endurance',
  FAT: 'fatigue',
  FIT: 'fitness',
  HUN: 'hunger',
  MOR: 'morale',
  STS: 'stress',
  FEA: 'fear',
  PAN: 'panic',
  SAN: 'sanity',
  SIC: 'sickness',
  PAI: 'pain',
  DRU: 'drunkenness',
  THI: 'thirst',
  UHP: 'unhappiness'
};

const $unknown = Symbol('unknown');
const $sort = Symbol('sort');
const radioDataFilePath = process.argv[2];

if (!radioDataFilePath) {
  throw new Error('invalid or missing radio data xml file path');
}

const radioData = await parseStringPromise(
  await readFile(
    resolvePath(
      fileURLToPath(new URL('.', import.meta.url)),
      radioDataFilePath
    ),
    { encoding: 'utf8' }
  )
);

const data = (
  radioData.RadioData.Channels.flatMap((channel) =>
    (channel.ChannelEntry || []).filter(
      (channelEntry) => channelEntry.$.cat === 'Television'
    )
  ) || []
).map((channelEntry) => {
  return {
    name: channelEntry.$.name || $unknown,
    scripts: (channelEntry.ScriptEntry || []).map((scriptEntry) => {
      return {
        name: scriptEntry.$.name || $unknown,
        isStartScript:
          scriptEntry.$.name && scriptEntry.$.name === channelEntry.$.name,
        broadcasts: (scriptEntry.BroadcastEntry || []).map((broadcastEntry) => {
          return {
            day:
              broadcastEntry.$.day === undefined
                ? $unknown
                : Number(broadcastEntry.$.day) + 1,
            startTime:
              broadcastEntry.$.timestamp === undefined
                ? $unknown
                : minutesToTime(broadcastEntry.$.timestamp),
            endTime:
              broadcastEntry.$.endstamp === undefined
                ? $unknown
                : minutesToTime(broadcastEntry.$.endstamp),
            lines: (broadcastEntry.LineEntry || []).map((lineEntry) => {
              return {
                line: lineEntry._,
                codes: (lineEntry.$.codes?.split(',') || [])
                  .filter((code) => Boolean(code))
                  .map((code) => {
                    const [id, op, num] = code
                      .match(/^(\w+)(\+|\-|=)([\d.]+)$/)
                      .slice(1);

                    const skillInteraction = SkillInteractions[id];
                    const statInteraction = StatInteractions[id];

                    return {
                      interaction:
                        skillInteraction || statInteraction || `"${id}"?`,
                      type: skillInteraction
                        ? 'skill'
                        : statInteraction
                        ? 'stat'
                        : $unknown,
                      operation:
                        op === '+'
                          ? 'addition'
                          : op === '-'
                          ? 'subtraction'
                          : $unknown,
                      number: Number(num)
                    };
                  })
              };
            })
          };
        })
      };
    })
  };
});

data.forEach((show) => {
  console.log('#', show.name);

  show.scripts.forEach((script, scriptIndex) => {
    let previousDay = 0;

    console.log('##', show.name, '-', script.name);

    script.broadcasts.forEach(({ day, startTime, endTime, lines }) => {
      let ticks = 0;
      let skillInteractions = [];
      let statInteractions = [];

      lines.forEach(({ codes }) => {
        let addSkillTick = false;

        codes.forEach(({ interaction, type, operation, number }) => {
          const interactionsObject =
            type === 'skill' ? skillInteractions : statInteractions;

          addSkillTick ||= type === 'skill';

          let target = interactionsObject.find(
            (obj) => obj[$sort] === interaction
          );

          if (target === undefined) {
            target = {
              [$sort]: interaction,
              [type === 'skill' ? 'skill' : 'stat']: interaction,
              change: 0
            };
            interactionsObject.push(target);
          }

          target.change += (operation === 'subtraction' ? -1 : 1) * number;
        });

        if (addSkillTick) {
          ticks += 1;
        }
      });

      [...skillInteractions, ...statInteractions].forEach(
        (interactionObject) => {
          interactionObject.change = `${
            interactionObject.change > 0 ? '+' : ''
          }${interactionObject.change}`;
        }
      );

      skillInteractions = sortInteractions(skillInteractions);
      statInteractions = sortInteractions(statInteractions);

      let prefix = '';

      if (day !== previousDay) {
        prefix = `### DAY ${day}\n`;
      }

      previousDay = day;

      console.log(
        `${prefix}#### ${startTime} to ${endTime} (day ${day})\nAffected skills${
          ticks > 0 ? ` (over ${ticks} tick${ticks > 1 ? 's' : ''})` : ''
        }:${
          skillInteractions.length
            ? `\n${getTable(skillInteractions)}`
            : ' (none)\\'
        }\nAffected stats:${
          statInteractions.length
            ? `\n${getTable(statInteractions)}`
            : ' (none)'
        }`
      );
    });

    if (!script.broadcasts.length) {
      console.log('(no broadcasts found)');
    }
  });
});

function minutesToTime(time) {
  return `${Math.floor(time / 60) % (24).toString().padStart(2, '0')}:${(
    time % 60
  )
    .toString()
    .padStart(2, '0')}`;
}

function sortInteractions(interactions) {
  return interactions.sort((interactionA, interactionB) => {
    if (interactionA[$sort].startsWith('"')) return 1;
    if (interactionB[$sort].startsWith('"')) return -1;
    if (interactionA[$sort] < interactionB[$sort]) return -1;
    if (interactionA[$sort] > interactionB[$sort]) return 1;
    return 0;
  });
}

// * https://stackoverflow.com/a/69874540/1367414
function getTable(input) {
  // @see https://stackoverflow.com/a/67859384
  const ts = new Transform({
    transform(chunk, enc, cb) {
      cb(null, chunk);
    }
  });
  const logger = new Console({ stdout: ts });

  logger.table(input);

  const table = (ts.read() || '').toString();
  let result = '';

  for (let row of table.split(/[\r\n]+/)) {
    let r = row.replace(/[^┬]*┬/, '┌');
    r = r.replace(/^├─*┼/, '├');
    r = r.replace(/│[^│]*/, '');
    r = r.replace(/^└─*┴/, '└');
    r = r.replace(/'/g, ' ');
    result += `${r}\n`;
  }

  return '```\n' + result.trim() + '\n```';
}
