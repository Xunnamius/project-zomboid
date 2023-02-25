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

console.log(radioData);
