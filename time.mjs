/**
 * This script will tell you what time it is in-game and also play a
 * notification sound 10 in-game minutes before Life and Living (and Trelai HQ
 * TV) tv shows are scheduled to come on. Requires latest Node.js installed.
 *
 * Runs best on Windows (when called from cmd.exe), but it probably works on
 * Linux too.
 *
 * You can call this script like so:
 *
 * Start the timer at the default start time/day (9:00):   node time.mjs
 * Start the timer at a specific time and unknown day:     node time.mjs 10:00
 * Start the timer at a specific time and known day:       node time.mjs 10:00 3
 *
 * Once the script is running, you can use the keyboard to pause the timer,
 * resume the timer, and fast-forward the timer.
 */

import { playAudioFile } from 'audic';
import readline from 'readline';

const igMinutesPerIrlSecond = 24 / 60;
const startTimeArgv = process.argv[2];
const startDayArgv = process.argv[3];

let interval = null;
let startTimeMs = Date.now();
let startTimeHours = 9;
let startTimeMinutes = 0;
let pauseTimeMs = 0;

if (startTimeArgv) {
  const [hours, minutes] = startTimeArgv.split(':').map((str) => Number(str));
  startTimeHours = hours;
  startTimeMinutes = minutes;
}

const pad = (num) => num.toString().padStart(2, '0');

const clearLineAndWrite = (str) => {
  process.stdout.clearLine();
  process.stdout.cursorTo(0);
  process.stdout.write(str);
};

console.log(
  `starting time: ${pad(startTimeHours)}:${pad(
    startTimeMinutes
  )}\npress "P" to pause\npress "R" to result\npress "CTRL+C" to quit\n---`
);

readline.emitKeypressEvents(process.stdin);
process.stdin.setRawMode(true);

process.stdin.on('keypress', (str, key) => {
  if (key.ctrl && key.name === 'c') {
    process.exit();
  } else if (key.name === 'p') {
    clearInterval(interval);
    pauseTimeMs = Date.now();
    clearLineAndWrite('-- clock paused --');
  } else if (key.name === 'r') {
    startTimeMs += Date.now() - pauseTimeMs;
    startReportingTime();
  }
});

const startReportingTime = () => {
  clearLineAndWrite(getTime());
  interval = setInterval(() => {
    clearLineAndWrite(getTime());
  }, (1 / igMinutesPerIrlSecond) * 1000);
};

const getTime = (customStartTimeMs) => {
  const igMinutesSinceStart =
    ((Date.now() - (customStartTimeMs ?? startTimeMs)) / 1000) *
      igMinutesPerIrlSecond +
    startTimeMinutes +
    startTimeHours * 60;

  const timeHours = Math.floor(igMinutesSinceStart / 60) % 24;
  const timeMinutes = Math.floor(igMinutesSinceStart % 60);
  const time = `${pad(timeHours)}:${pad(timeMinutes)}`;

  const timeDay =
    (startDayArgv ? Number(startDayArgv) : 1) +
    Math.floor(igMinutesSinceStart / (60 * 24));

  const timeAndDay = `[day ${
    startTimeArgv && startDayArgv === undefined ? '?' : timeDay
  }] ${time}`;

  if (
    [
      '05:50',
      '06:00',
      '08:50',
      '09:00',
      '11:50',
      '12:00',
      '17:50',
      '18:00',
      '23:50',
      '00:00'
    ].includes(time)
  ) {
    playAudioFile('notification.mp3');
  }

  return timeAndDay;
};

process.stdout.write('initializing...');
startReportingTime();
