# Debug tile

The phone side of the [Debug journal](../../../desktop/tools/debug-journal).

A Quick Settings tile that opens a short capture sheet for a bug I think of away from the desk. Same five fields as the desktop form; the entry syncs back through [Pulse](../../../../services/pulse).

## Stack

- `TileService` opening a Compose bottom sheet
- Writes to Room as `tool = 'debug'`, `device = 'phone'`

## First step

After the desktop form exists and gets used for a week.
