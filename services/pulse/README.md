# Pulse

The spine: one log, one heatmap, one door for Claude.

Every other tool writes to the [`events`](../../shared/schema) table. Pulse syncs that table between my laptop and phone, draws the heatmap (one row per tool, one square per day), and exposes an MCP server so Claude Code and Claude Duet can read the log and write to it. A read-only slice of the heatmap is published on wseem.com/log.

## Stack

- **Storage:** SQLite on each device, Supabase Postgres as the single sync point
- **Sync:** devices push unsynced rows and pull anything newer; rows are append-only, so there are no merge conflicts
- **MCP server:** a remote server on Cloudflare Workers or Vercel, authenticated with one token
- **Public endpoint:** read-only daily counts per tool, no payloads

## Cost

$0 on free tiers.

## MCP tools (planned)

| Tool | Does |
|---|---|
| `log_event` | Write a row (used by Claude when I log something in chat) |
| `get_heatmap` | Counts per tool per day for a date range |
| `get_day` | Everything logged on one day |
| `get_streaks` | Current and longest streak per tool, plus what's gone stale |

## First step

Create `events` in a local SQLite file and log one row by hand.
