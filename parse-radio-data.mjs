/**
 * This script will take a radio data XML file and output scheduling information
 * about it.
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
  SPR: 'Sprinting',
  LFT: 'Lightfooted',
  NIM: 'Nimble',
  SNE: 'Sneaking',
  BAA: 'Axe',
  BUA: 'Blunt',
  CRP: 'Carpentry',
  COO: 'Cooking',
  FRM: 'Farming',
  DOC: 'Doctor',
  ELC: 'Electricity',
  MTL: 'Metalworking',
  AIM: 'Aiming',
  REL: 'Reloading',
  FIS: 'Fishing',
  TRA: 'Trapping',
  FOR: 'Foraging',
  TAI: 'Tailoring',
  MEC: 'Mechanics',
  CMB: 'Combat',
  SPE: 'Spear',
  SBU: 'SmallBlunt',
  LBA: 'LongBlade',
  SBA: 'SmallBlade'
};

const StatInteractions = {
  ANG: 'Anger',
  BOR: 'Boredom',
  END: 'Endurance',
  FAT: 'Fatigue',
  FIT: 'Fitness',
  HUN: 'Hunger',
  MOR: 'Morale',
  STS: 'Stress',
  FEA: 'Fear',
  PAN: 'Panic',
  SAN: 'Sanity',
  SIC: 'Sickness',
  PAI: 'Pain',
  DRU: 'Drunkenness',
  THI: 'Thirst',
  UHP: 'Unhappiness'
};

const unknown = Symbol('unknown');
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
    name: channelEntry.$.name || unknown,
    scripts: (channelEntry.ScriptEntry || []).map((scriptEntry) => {
      return {
        name: scriptEntry.$.name || unknown,
        isStartScript:
          scriptEntry.$.name && scriptEntry.$.name === channelEntry.$.name,
        broadcasts: (scriptEntry.BroadcastEntry || []).map((broadcastEntry) => {
          return {
            day: broadcastEntry.$.day ?? unknown,
            startTime:
              broadcastEntry.$.timestamp === undefined
                ? unknown
                : minutesToTime(broadcastEntry.$.timestamp),
            endTime:
              broadcastEntry.$.endstamp === undefined
                ? unknown
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
                        skillInteraction || statInteraction || unknown,
                      type: skillInteraction
                        ? 'skill'
                        : statInteraction
                        ? 'stat'
                        : unknown,
                      operation:
                        op === '+'
                          ? 'addition'
                          : op === '-'
                          ? 'subtraction'
                          : unknown,
                      number: num
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
  show.scripts.forEach((script) => {
    console.log(show.name, '-', script.name);
    console.log('---');

    script.broadcasts.forEach(({ day, startTime, endTime, lines }) => {
      let ticks = 0;
      let skillInteractions = [];
      let statInteractions = [];

      lines.forEach(({ codes }) => {
        codes.forEach(({ interaction, type, operation, number }) => {
          const interactionsObject =
            type === 'skill' ? skillInteractions : statInteractions;

          let target = interactionsObject.find(
            ({ skill, stat }) => skill === interaction || stat === interaction
          );

          if (target === undefined) {
            target = { [type]: interaction, change: 0 };
          }

          target.change += (operation === 'subtraction' ? -1 : 1) * number;
        });
      });

      [...skillInteractions, ...statInteractions].forEach(
        (interactionObject) => {
          interactionObject.change = `${
            interactionObject.change > 0
              ? '+'
              : interactionObject.change < 0
              ? '-'
              : ''
          }${interactionObject}`;
        }
      );

      console.log(
        `[day ${day}] ${startTime} to ${endTime}\nTicks: ${ticks}\nSkills:${
          skillInteractions.length
            ? `\n${getTable(skillInteractions)}`
            : '(none)\n'
        }Stats:${
          statInteractions.length
            ? `\n${getTable(statInteractions)}`
            : '(none)\n'
        }---`
      );
    });
  });
});

function minutesToTime(time) {
  return `${Math.floor(time / 60) % (24).toString().padStart(2, '0')}:${(
    time % 60
  )
    .toString()
    .padStart(2, '0')}`;
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

  return result;
}
