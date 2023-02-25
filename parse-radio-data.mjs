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

const Interactions = {
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
  UHP: 'Unhappiness',
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

(
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
            startTime: broadcastEntry.$.timestamp ?? unknown,
            endTime: broadcastEntry.$.endstamp ?? unknown,
            lines: (broadcastEntry.LineEntry || []).map((lineEntry) => {
              return {
                line: lineEntry._,
                codes: (lineEntry.$.codes?.split(',') || [])
                  .filter((code) => Boolean(code))
                  .map((code) => {
                    console.log('code=', code);
                    const [id, op, num] = code.match(
                      /^(\w+)(\+|\-|=)([\d.]+)$/
                    );
                    console.log('matches=', id, op, num);
                    return {
                      interaction: Interactions[id] || unknown,
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

console.log(radioData);
