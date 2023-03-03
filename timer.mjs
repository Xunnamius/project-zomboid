/**
 * This script will tell you what time it is in-game and also play a
 * notification sound 10 in-game minutes before Life and Living (and Trelai HQ
 * TV) tv shows are scheduled to come on. Requires latest Node.js installed.
 *
 * Runs best on Windows (when called from cmd.exe), but it probably works on
 * Linux too.
 *
 * You can call this script like so (after running npm install):
 *
 * Start the timer at the default start time/day (9:00):   node time.mjs
 * Start the timer at a specific time and unknown day:     node time.mjs 10:00
 * Start the timer at a specific time and known day:       node time.mjs 10:00 3
 *
 * Note that notifications will be disabled if the day is unknown, or if the
 * day is greater than 9.
 *
 * Once the script is running, you can use the keyboard to Pause the timer,
 * Resume the timer, Time-travel to a specific time and day, and get information
 * about the Next notification times.
 */

import { playAudioFile } from 'audic';
import readline from 'readline';

// * The game's default start time is 09:00
let startTimeHours = 9;
let startTimeMinutes = 0;

// ! If you add more channels, you should also add alarmFiles and channels entries
const channelLifeAndLiving = Symbol('life-and-living');
const channelTrelaiHqTv = Symbol('trelai-hq-tv');

// ! Must correspond to entries in alarmFiles and the channelX constants
const channels = {
  [channelLifeAndLiving]: { name: 'Life and Living' },
  [channelTrelaiHqTv]: { name: 'Trelai HQ TV' }
};

// ! Must be paths relative to the timer.mjs file
const alarmFiles = {
  [channelLifeAndLiving]: 'notification-lal.mp3',
  [channelTrelaiHqTv]: 'notification-trelai.mp3'
};

// ! Must be in ascending chronological order
const alarmEvents = [
  // * Some events are prepended to this array depending on the starting time

  { day: 1, time: '11:50', channel: channelLifeAndLiving },
  { day: 1, time: '12:00', channel: channelLifeAndLiving },
  { day: 1, time: '12:50', channel: channelTrelaiHqTv },
  { day: 1, time: '13:00', channel: channelTrelaiHqTv },
  { day: 1, time: '16:50', channel: channelTrelaiHqTv },
  { day: 1, time: '17:00', channel: channelTrelaiHqTv },
  { day: 1, time: '17:20', channel: channelTrelaiHqTv },
  { day: 1, time: '17:30', channel: channelTrelaiHqTv },
  { day: 1, time: '17:50', channel: channelLifeAndLiving },
  { day: 1, time: '18:00', channel: channelLifeAndLiving },

  { day: 2, time: '05:50', channel: channelLifeAndLiving },
  { day: 2, time: '06:00', channel: channelLifeAndLiving },
  { day: 2, time: '06:20', channel: channelTrelaiHqTv },
  { day: 2, time: '06:30', channel: channelTrelaiHqTv },
  { day: 2, time: '06:50', channel: channelTrelaiHqTv },
  { day: 2, time: '07:00', channel: channelTrelaiHqTv },
  { day: 2, time: '11:50', channel: channelLifeAndLiving },
  { day: 2, time: '12:00', channel: channelLifeAndLiving },
  { day: 2, time: '17:50', channel: channelLifeAndLiving },
  { day: 2, time: '18:00', channel: channelLifeAndLiving },

  { day: 3, time: '05:50', channel: channelLifeAndLiving },
  { day: 3, time: '06:00', channel: channelLifeAndLiving },
  { day: 3, time: '06:20', channel: channelTrelaiHqTv },
  { day: 3, time: '06:30', channel: channelTrelaiHqTv },
  { day: 3, time: '11:50', channel: channelLifeAndLiving },
  { day: 3, time: '12:00', channel: channelLifeAndLiving },
  { day: 3, time: '17:50', channel: channelLifeAndLiving },
  { day: 3, time: '18:00', channel: channelLifeAndLiving },

  // * Days 4 and 8 are missing the 6pm show on LaL
  { day: 4, time: '05:50', channel: channelLifeAndLiving },
  { day: 4, time: '06:00', channel: channelLifeAndLiving },
  { day: 4, time: '06:20', channel: channelTrelaiHqTv },
  { day: 4, time: '06:30', channel: channelTrelaiHqTv },
  { day: 4, time: '06:50', channel: channelTrelaiHqTv },
  { day: 4, time: '07:00', channel: channelTrelaiHqTv },
  { day: 4, time: '11:50', channel: channelLifeAndLiving },
  { day: 4, time: '12:00', channel: channelLifeAndLiving },
  { day: 4, time: '16:50', channel: channelTrelaiHqTv },
  { day: 4, time: '17:00', channel: channelTrelaiHqTv },

  { day: 5, time: '05:50', channel: channelLifeAndLiving },
  { day: 5, time: '06:00', channel: channelLifeAndLiving },
  { day: 5, time: '06:20', channel: channelTrelaiHqTv },
  { day: 5, time: '06:30', channel: channelTrelaiHqTv },
  { day: 5, time: '11:50', channel: channelLifeAndLiving },
  { day: 5, time: '12:00', channel: channelLifeAndLiving },
  { day: 5, time: '13:20', channel: channelTrelaiHqTv },
  { day: 5, time: '13:30', channel: channelTrelaiHqTv },
  { day: 5, time: '17:50', channel: channelLifeAndLiving },
  { day: 5, time: '18:00', channel: channelLifeAndLiving },

  { day: 6, time: '05:50', channel: channelLifeAndLiving },
  { day: 6, time: '06:00', channel: channelLifeAndLiving },
  { day: 6, time: '06:20', channel: channelTrelaiHqTv },
  { day: 6, time: '06:30', channel: channelTrelaiHqTv },
  { day: 6, time: '06:50', channel: channelTrelaiHqTv },
  { day: 6, time: '07:00', channel: channelTrelaiHqTv },
  { day: 6, time: '07:20', channel: channelTrelaiHqTv },
  { day: 6, time: '07:30', channel: channelTrelaiHqTv },
  { day: 6, time: '11:50', channel: channelLifeAndLiving },
  { day: 6, time: '12:00', channel: channelLifeAndLiving },
  { day: 6, time: '17:50', channel: channelLifeAndLiving },
  { day: 6, time: '18:00', channel: channelLifeAndLiving },

  { day: 7, time: '05:50', channel: channelLifeAndLiving },
  { day: 7, time: '06:00', channel: channelLifeAndLiving },
  { day: 7, time: '06:50', channel: channelTrelaiHqTv },
  { day: 7, time: '07:00', channel: channelTrelaiHqTv },
  { day: 7, time: '07:50', channel: channelTrelaiHqTv },
  { day: 7, time: '08:00', channel: channelTrelaiHqTv },
  { day: 7, time: '11:50', channel: channelLifeAndLiving },
  { day: 7, time: '12:00', channel: channelLifeAndLiving },
  { day: 7, time: '12:50', channel: channelTrelaiHqTv },
  { day: 7, time: '13:00', channel: channelTrelaiHqTv },
  { day: 7, time: '17:50', channel: channelLifeAndLiving },
  { day: 7, time: '18:00', channel: channelLifeAndLiving },

  // * Days 4 and 8 are missing the 6pm show on LaL
  { day: 8, time: '05:50', channel: channelLifeAndLiving },
  { day: 8, time: '06:00', channel: channelLifeAndLiving },
  { day: 8, time: '06:50', channel: channelTrelaiHqTv },
  { day: 8, time: '07:00', channel: channelTrelaiHqTv },
  { day: 8, time: '07:20', channel: channelTrelaiHqTv },
  { day: 8, time: '07:30', channel: channelTrelaiHqTv },
  { day: 8, time: '12:50', channel: channelTrelaiHqTv },
  { day: 8, time: '13:00', channel: channelTrelaiHqTv },
  { day: 8, time: '17:50', channel: channelLifeAndLiving },
  { day: 8, time: '18:00', channel: channelLifeAndLiving },

  // * Media blackout begins
  { day: 9, time: '05:50', channel: channelLifeAndLiving },
  { day: 9, time: '06:00', channel: channelLifeAndLiving },
  { day: 9, time: '06:20', channel: channelTrelaiHqTv },
  { day: 9, time: '06:30', channel: channelTrelaiHqTv },
  { day: 9, time: '07:20', channel: channelTrelaiHqTv },
  { day: 9, time: '07:30', channel: channelTrelaiHqTv },

  { day: 10, time: '06:20', channel: channelTrelaiHqTv },
  { day: 10, time: '06:30', channel: channelTrelaiHqTv },

  { day: 18, time: '12:20', channel: channelTrelaiHqTv },
  { day: 18, time: '12:30', channel: channelTrelaiHqTv }
];

// *** End of configurable globals ***

const igMinutesPerIrlSecond = 24 / 60;
const startTimeArgv = process.argv[2];
let startDayArgv = process.argv[3];

let interval = null;
let startTimeMs = Date.now();
let pauseTimeMs = 0;

let seenInput = '';
let lookingForInput = false;

if (startTimeArgv) {
  const [hours, minutes] = startTimeArgv.split(':').map((str) => Number(str));

  if (
    hours === undefined ||
    minutes === undefined ||
    Number.isNaN(hours) ||
    Number.isNaN(minutes)
  ) {
    throw new Error(`invalid start time (${startTimeArgv})`);
  }

  startTimeHours = hours;
  startTimeMinutes = minutes;
}

if (
  Number(startDayArgv) === 1 ||
  (startDayArgv === undefined && startTimeArgv === undefined)
) {
  if (startTimeHours < 8) {
    alarmEvents.unshift({ day: 1, time: '08:00', channel: channelTrelaiHqTv });

    alarmEvents.unshift({ day: 1, time: '07:50', channel: channelTrelaiHqTv });
  }

  if (startTimeHours < 6) {
    alarmEvents.unshift({
      day: 1,
      time: '06:00',
      channel: channelLifeAndLiving
    });

    alarmEvents.unshift({
      day: 1,
      time: '05:50',
      channel: channelLifeAndLiving
    });
  }

  if (startTimeHours < 11 && startTimeMinutes < 50) {
    alarmEvents.unshift({
      day: 1,
      time: `${pad(startTimeHours)}:${pad(startTimeMinutes)}`,
      channel: channelLifeAndLiving
    });
  }
}

readline.emitKeypressEvents(process.stdin);

if (process.stdin.isTTY) {
  process.stdin.setRawMode(true);
}

process.stdin.on('keypress', (_, key) => {
  if (key.ctrl && key.name === 'c') {
    process.exit();
  } else if (lookingForInput) {
    if (key.name === 'return') {
      const [hours, minutes, day] = seenInput
        .split(' ')
        .map((str) => Number(str));

      if (
        hours === undefined ||
        minutes === undefined ||
        day === undefined ||
        Number.isNaN(hours) ||
        Number.isNaN(minutes) ||
        Number.isNaN(day)
      ) {
        throw new Error(`invalid input (${seenInput})`);
      }

      startTimeMs = Date.now();
      startDayArgv = day.toString();
      startTimeHours = hours;
      startTimeMinutes = minutes;
      pauseTimeMs = 0;

      seenInput = '';
      lookingForInput = false;
      process.stdout.cursorTo(0, 0);
      process.stdout.clearScreenDown();
      restartProgram();
    } else if (key.name === 'backspace' && seenInput.length) {
      process.stdout.moveCursor(-1, 0);
      process.stdout.clearLine(1);
      seenInput = seenInput.slice(0, -1);
    } else if (key.name === 'space') {
      process.stdout.write(' ');
      seenInput += ' ';
    } else if (/^[0-9]$/.test(key.name)) {
      process.stdout.write(key.name);
      seenInput += key.name;
    }
  } else {
    if ((key.name === 'p' || key.name === 't') && pauseTimeMs <= 0) {
      clearInterval(interval);
      pauseTimeMs = Date.now();
      clearLineAndWrite(`-- clock paused at ${getTime({ format: 2 })} --`);

      if (key.name === 't') {
        process.stdout.write('\nenter new time and day (HH MM D): ');
        lookingForInput = true;
      }
    } else if (key.name === 'r' && pauseTimeMs > 0) {
      startTimeMs += Date.now() - pauseTimeMs;
      pauseTimeMs = 0;
      startReportingTime();
    } else if (key.name === 'n' && pauseTimeMs <= 0) {
      const [_, time, day] = getTime({ format: 3 });

      clearLineAndWrite(
        `--> upcoming notifications as of ${getTime({ format: 2 })} <--\n`
      );

      const peek1Ahead = peekNextAlarm(time, day, 0);
      const peek2Ahead = peekNextAlarm(time, day, 1);
      const peek3Ahead = peekNextAlarm(time, day, 2);

      process.stdout.write(`${peek1Ahead}\n`);

      if (peek2Ahead !== '(none)') {
        process.stdout.write(`${peek2Ahead}\n`);
      }

      if (peek3Ahead !== '(none)') {
        process.stdout.write(`${peek3Ahead}\n`);
      }

      process.stdout.write(`---\n${getTime({ format: 1 })}`);
    }
  }
});

restartProgram();

function restartProgram() {
  initializeScreen();
  startReportingTime();
}

function initializeScreen() {
  console.log(
    `started timer at ${pad(startTimeHours)}:${pad(startTimeMinutes)} on day ${
      startDayArgv ?? 1
    }\npress "P" to pause\npress "R" to resume\npress "T" to time-travel\npress "N" to see upcoming notifications\npress "CTRL+C" to quit\n---`
  );

  process.stdout.write('initializing...');
}

function startReportingTime() {
  const writeTimeAndConsiderAlarm = () => {
    const [timeAndDay, time, day] = getTime({ format: 3 });
    clearLineAndWrite(timeAndDay);
    maybeTriggerAlarm(time, day);
  };

  writeTimeAndConsiderAlarm();
  interval = setInterval(
    writeTimeAndConsiderAlarm,
    (1 / igMinutesPerIrlSecond) * 1000
  );
}

function getTime({ format = 1 } = {}) {
  if (startTimeMinutes < 0 || startTimeMinutes > 59) {
    throw new Error(`invalid start time minutes (${startTimeHours})`);
  } else if (startTimeHours < 0 || startTimeHours > 23) {
    throw new Error(`invalid start time hours (${startTimeHours})`);
  }

  const igMinutesSinceStart =
    ((Date.now() - startTimeMs) / 1000) * igMinutesPerIrlSecond +
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

  if (Number.isNaN(day) || day < 1) {
    throw new Error(`invalid start day (${startDayArgv})`);
  }

  /**
   * @type {string | [string, string, number | '?']}
   */
  const timeAndDay =
    format === 1
      ? `[day ${day}] ${time}`
      : format === 2
      ? `${time} on day ${day}`
      : format === 3
      ? [`[day ${day}] ${time}`, time, day]
      : '???';

  return timeAndDay;
}

/**
 * @param num {string | number}
 */
function pad(num) {
  return num.toString().padStart(2, '0');
}

function clearLineAndWrite(str) {
  process.stdout.clearLine();
  process.stdout.cursorTo(0);
  process.stdout.write(str);
}

/**
 * @param time {string}
 * @param day {number}
 */
function maybeTriggerAlarm(time, day) {
  const subject = getMatchingAlarm(time, day);

  if (subject) {
    playAudioFile(alarmFiles[subject]);
  }
}

/**
 *
 * @param time {string}
 * @param day {number}
 */
function getMatchingAlarm(time, day) {
  const alarmEvent = alarmEvents.find(({ time: alarmTime, day: alarmDay }) => {
    return alarmDay === day && alarmTime === time;
  });

  return alarmEvent?.channel;
}

/**
 *
 * @param time {string}
 * @param day {number}
 * @param lookNIndicesAhead {number}
 */
function peekNextAlarm(time, day, lookNIndicesAhead) {
  let nextAlarmString = '(none)';
  let lastAlarmIndex = -1;

  do {
    const alarmEvent = alarmEvents.find(
      ({ time: alarmTime, day: alarmDay }, index) => {
        const result =
          (alarmDay > day || (alarmDay == day && alarmTime >= time)) &&
          index > lastAlarmIndex;

        if (lastAlarmIndex < index) {
          lastAlarmIndex = index;
        }

        return result;
      }
    );

    if (!alarmEvent) {
      break;
    }

    nextAlarmString = `${channels[alarmEvent.channel].name} at ${
      alarmEvent.time
    } on day ${alarmEvent.day}`;
  } while (lookNIndicesAhead-- > 0);

  return nextAlarmString;
}
