# Debug journal

Every bug, logged in ten seconds.

A hotkey opens a five-field form wherever I am: symptom, first guess, actual root cause, fix, time spent. On the phone, a [Quick Settings tile](../../../android/features/debug-tile) does the same. Over time it groups root causes (state, async, types, caching, styling), shows whether fix times are shrinking, and surfaces the bugs worth retelling.

## Stack

- Global-shortcut capture window in the desktop app
- Logs to `events` as `tool = 'debug'`; the five fields go in `payload`
- Monthly roundup written by Claude through [Pulse](../../../../services/pulse)

## Logs

| `kind` | `value` |
|---|---|
| `bug_logged` | minutes to fix |

## Cost

$0.

## First step

The hotkey and the five-field form, writing straight into `events`. Built the first time a real bug costs more than an hour.
