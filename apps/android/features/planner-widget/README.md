# Planner widget

The phone side of the [Day planner](../../../desktop/tools/day-planner).

A home screen widget showing today's blocks, with the current one highlighted. Tapping a block marks it done. Morning and evening reminders fire as exact alarms so they don't silently stop.

## Stack

- Jetpack Glance widget reading from Room
- Plan synced from the laptop through [Pulse](../../../../services/pulse)
- Exact alarms for the morning plan and evening review

## Logs

Same rows as the desktop planner, with `device = 'phone'`.

## First step

Built in week two, after sync works. A widget that shows yesterday's data is worse than none.
