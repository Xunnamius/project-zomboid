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

const interactions = {
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

radioData.RadioData.Channels.flatMap((channel) =>
  channel.ChannelEntry.filter((entry) => entry.$.cat === 'Television')
).map((entry) => {
  return {
    isStartScript: false,
    name: entry.$.name,
    broadcasts: entry.ScriptEntry.map((entry) => {
      return { name: entry.$.name };
    })
  };
});

console.log(radioData);
