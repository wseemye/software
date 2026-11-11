# Day planner

My sticky note, except it can't be closed.

A widget pinned to the desktop. I type my day the way I already plan it:

```
11:30 - 12:30 : review the new landing page
13:00 - 13:30 : read through the API changes
13:30 - 15:00 : prep for the demo
```

Each line becomes a time block. The current block is highlighted, unfinished blocks from yesterday carry over to the top, and an empty day shows a loud empty state instead of a blank card. In the evening I tick off what got done. The same plan shows on my phone through the [Android widget](../../../android/features/planner-widget).

## Stack

- Tauri window: `decorations: false`, `transparent: true`, `alwaysOnBottom: true`, `skipTaskbar: true`
- Autostart plugin so it's there at login; global hotkey to bring it forward
- A small parser from free text to `{ start, end, title }` blocks
- Logs to `events` as `tool = 'planner'`

## Logs

| `kind` | `value` |
|---|---|
| `day_planned` | number of blocks |
| `block_done` | block length in minutes |
| `day_reviewed` | share of blocks done (0–1) |

## Cost

$0.

## First step

A frameless, always-on-bottom window that saves its text to SQLite and shows it again on launch. Parsing, carryover and the empty state come after a few days of real use.
