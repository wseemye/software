# schema

The one table every tool writes to. If a tool was used, there's a row. If there's no row for a day, the heatmap shows a gap.

See [`events.sql`](events.sql).

## Fields

| Column | Meaning |
|---|---|
| `id` | UUID, generated on the device that wrote the row, so offline writes never collide |
| `tool` | Which tool wrote it: `planner`, `session`, `rep`, `radar`, `recorder`, `debug`, `gate` |
| `kind` | What happened inside that tool, e.g. `block_done`, `quiz_scored`, `rep_passed` |
| `occurred_at` | When it happened (UTC) |
| `day` | Local date it counts toward on the heatmap |
| `value` | One number that sums up the result: a score, minutes, a count |
| `payload` | JSON with tool-specific detail |
| `device` | `laptop` or `phone` |
| `synced_at` | Set once Pulse has the row; null means it's still local only |

## Rules

- Rows are append-only. Corrections are new rows, never edits.
- `day` is stored, not derived, so a late-night session counts toward the day I meant.
- SQLite locally (rusqlite on desktop, Room on Android), Postgres in Pulse. The SQL here stays within what both support.
