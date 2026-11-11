# Session closer

Proof I understand the code I ship, including the code AI wrote.

When a coding session ends, a hotkey opens a short quiz on that session's diff: why it works, what breaks on an edge case, what it costs to run or render. I answer each in a sentence and the answers get graded. Wrong answers come back a few days later as review questions. It also asks what I had to correct in AI-written code; corrections that repeat become rules in my `CLAUDE.md`.

## Stack

- Rust + `git2` to read the diff since the last closed session
- Tauri window behind a global hotkey
- The diff and answers go to [Pulse](../../../../services/pulse); Claude Code or Claude Duet writes and grades the questions through its MCP server
- No API calls from the app itself

## Logs

| `kind` | `value` |
|---|---|
| `quiz_scored` | score (0–1) |
| `correction_logged` | 1 per correction |
| `review_passed` | 1 per resurfaced question answered correctly |

## Cost

$0 within a Claude subscription.

## First step

A Rust command that prints diff stats since the last session timestamp, behind a global hotkey.
