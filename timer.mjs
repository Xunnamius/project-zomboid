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
 * Once the script is running, you can use the keyboard to Pause the timer,
 * Resume the timer, and Fast-forward the timer to a specific time and day.
 */

import { playAudioFile } from 'audic';
import readline from 'readline';

const igMinutesPerIrlSecond = 24 / 60;
const startTimeArgv = process.argv[2];
let startDayArgv = process.argv[3];

let interval = null;
let startTimeMs = Date.now();
let startTimeHours = 9;
let startTimeMinutes = 0;
let pauseTimeMs = 0;

let seenInput = '';
let lookingForInput = false;

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

const initializeScreen = () => {
  console.log(
    `started timer at ${pad(startTimeHours)}:${pad(startTimeMinutes)} on day ${
      startDayArgv ?? 1
    }\npress "P" to pause\npress "R" to resume\npress "F" to fast-forward\npress "CTRL+C" to quit\n---`
  );

  process.stdout.write('initializing...');
};

const startReportingTime = () => {
  clearLineAndWrite(getTime());
  interval = setInterval(() => {
    const [timeAndDay, time, day] = getTime({ format: 3 });
    clearLineAndWrite(timeAndDay);

    if (
      // *** Life and Living channel schedule***
      // * 9:00 is the default start time, so catch that cooking show!
      (day === 1 && ['09:00', '23:50'].includes(time)) ||
      // * I think there's a fishing show that comes on at midnight the 1st day
      (day === 2 && time === '00:00') ||
      // * Skip the 6pm time slot on the 4th and 8th days
      (day < 9 &&
        day !== 4 &&
        day !== 8 &&
        ['17:50', '18:00'].includes(time)) ||
      // * Issue notifications until the media blackout occurs
      (day < 9 && ['05:50', '06:00', '11:50', '12:00'].includes(time)) ||
      (day === 9 && ['05:50', '06:00'].includes(time))
      // *** Trelai HQ TV channel schedule***
    ) {
      playAudioFile('notification.mp3');
    }
  }, (1 / igMinutesPerIrlSecond) * 1000);
};

const getTime = ({ customStartTimeMs, format = 1 } = {}) => {
  const igMinutesSinceStart =
    ((Date.now() - (customStartTimeMs ?? startTimeMs)) / 1000) *
      igMinutesPerIrlSecond +
    startTimeMinutes +
    startTimeHours * 60;

  const timeHours = Math.floor(igMinutesSinceStart / 60) % 24;
  const timeMinutes = Math.floor(igMinutesSinceStart % 60);
  const time = `${pad(timeHours)}:${pad(timeMinutes)}`;

  const day =
    startTimeArgv && startDayArgv === undefined
      ? '?'
      : (startDayArgv ? Number(startDayArgv) : 1) +
        Math.floor(igMinutesSinceStart / (60 * 24));

  const timeAndDay =
    format === 1
      ? `[day ${day}] ${time}`
      : format === 2
      ? `${time} on day ${day}`
      : format === 3
      ? [`[day ${day}] ${time}`, time, day]
      : '???';

  return timeAndDay;
};

const restartProgram = () => {
  initializeScreen();
  startReportingTime();
};

readline.emitKeypressEvents(process.stdin);

if (process.stdin.isTTY) {
  process.stdin.setRawMode(true);
}

process.stdin.on('keypress', (_, key) => {
  if (lookingForInput) {
    if (key.name === 'enter') {
      const [time, day] = seenInput.split(' ');
      const [hours, minutes] = time?.split(':').map((str) => Number(str));

      if (
        time === undefined ||
        day === undefined ||
        hours === undefined ||
        minutes === undefined
      ) {
        throw new Error('invalid input format');
      }

      startDayArgv = day;
      startTimeHours = hours;
      startTimeMinutes = minutes;
      pauseTimeMs = 0;

      seenInput = '';
      lookingForInput = false;
      process.stdout.cursorTo(0, 0);
      process.stdout.clearScreenDown();
      restartProgram();
    } else {
      process.stdout.write(key.name);
      seenInput += key.name;
    }
  } else {
    if (key.ctrl && key.name === 'c') {
      process.exit();
    } else if (key.name === 'p' || key.name === 'f') {
      clearInterval(interval);
      pauseTimeMs = Date.now();
      clearLineAndWrite(
        `-- clock paused at ${getTime({ format: 2 })} on day  --`
      );

      if (key.name === 'f') {
        process.stdout.write('\nenter new time and day (HH:MM D): ');
        lookingForInput = true;
      }
    } else if (key.name === 'r') {
      startTimeMs += Date.now() - pauseTimeMs;
      startReportingTime();
    }
  }
});

restartProgram();
