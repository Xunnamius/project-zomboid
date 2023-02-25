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

const OtherInteractions = {
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
                    const otherInteraction = OtherInteractions[id];

                    return {
                      interaction:
                        skillInteraction || otherInteraction || unknown,
                      type: skillInteraction
                        ? 'skill'
                        : otherInteraction
                        ? 'other'
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
      let skillInteractions = {};
      let otherInteractions = {};

      lines.forEach(({ codes }) => {
        codes.forEach(({ interaction, type, operation, number }) => {
          const target =
            type === 'skill' ? skillInteractions : otherInteractions;

          if (target === undefined) {
            target[interaction] = 0;
          }

          target[interaction] +=
            (operation === 'subtraction' ? -1 : 1) * number;
        });
      });

      console.log(
        `[day ${day}] ${startTime} to ${endTime}\nSkills:\n${
          skillInteractions || '(none)'
        }\nTicks:\n${ticks}\nOther Interactions:\n${
          otherInteractions || '(none)'
        }\n---\n`
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
