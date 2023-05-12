/**
 * This script will take your X_SandboxVars.lua file and transform it into a
 * Y.cfg file. This is useful when you want to take an existing server's
 * sandbox variables and transform them into a preset that can be loaded
 * in single player games or in multiplayer games if you're the admin.
 *
 * I used this script to create a "darkness runner zombie" preset vs "light
 * shambler" preset to switch between when The Darkness Is Coming activates.
 */ 

import assert from 'node:assert';
import fs from 'node:fs';
import { parse } from 'lua-json';

const sandboxVarsFile = process.argv[2];
const newPresetFile = process.argv[3];

if (!sandboxVarsFile || !newPresetFile) {
  console.error(
    `ERROR: this script must be called with two arguments: an existing SandboxVars.lua file and the to-be-created preset.cfg file`
  );
  process.exit(1);
}

try {
  fs.accessSync(sandboxVarsFile, fs.constants.R_OK);
} catch {
  console.error(
    `ERROR: sandboxvars file "${sandboxVarsFile}" does not exist or cannot be read`
  );
  process.exit(2);
}

try {
  !fs.existsSync(newPresetFile) ||
    fs.accessSync(newPresetFile, fs.constants.W_OK);
} catch {
  console.error(`ERROR: preset file "${newPresetFile}" cannot be overwritten`);
  process.exit(3);
}

const sandboxVarsLua = fs.readFileSync(sandboxVarsFile, 'utf-8');
let sandboxVarsJson;

try {
  sandboxVarsJson = parse(sandboxVarsLua.replace(/^SandboxVars =/, 'return'));
} catch {
  console.error(
    `ERROR: sandboxvars file "${sandboxVarsFile}" cannot be parsed by this script`
  );
  process.exit(4);
}

const newPresetLines = flattenObject(null, sandboxVarsJson);

if (!newPresetLines.length) {
  console.error(
    `ERROR: sandboxvars file "${sandboxVarsFile}" conversion resulted in an empty preset file`
  );
  process.exit(5);
}

if (newPresetLines[0].startsWith('VERSION=')) {
  newPresetLines[0] = newPresetLines[0].replace(/^VERSION=/, 'Version=');
} else {
  console.error(
    `ERROR: assertion failed: expected first line of output to start with "VERSION="`
  );
  process.exit(6);
}

try {
  fs.writeFileSync(newPresetFile, newPresetLines.join('\n\n'));
} catch {
  console.error(
    `ERROR: new preset file "${newPresetFile}" creation failed (likely permissions issue)`
  );
  process.exit(7);
}

console.log('SUCCESS!');

/**
 * @param {string | null} key
 * @param {unknown} value
 * @returns {string[]}
 */
function flattenObject(key, value) {
  if (value && typeof value === 'object') {
    return Object.entries(value).flatMap(([subKey, subValue]) => {
      return flattenObject(key ? `${key}.${subKey}` : subKey, subValue);
    });
  } else {
    assert(typeof key === 'string');
    return `${key}=${value}`;
  }
}
