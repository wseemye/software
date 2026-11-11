# software

Personal software I build for one user: me. Every tool here runs on my own laptop or phone, gets used daily, and writes a row to a shared log each time it's used. The log is the point. Skipped days show up as gaps.

## The tools

| # | Tool | What it does | Runs on | Status |
|---|---|---|---|---|
| 1 | [Pulse](services/pulse) | Shared events log, heatmap, sync, and the connection Claude uses to read it | Laptop, phone, edge function | Planned |
| 2 | [Day planner](apps/desktop/tools/day-planner) | A sticky-note day plan pinned to the desktop that can't be closed | Desktop widget + Android widget | Planned |
| 3 | [Session closer](apps/desktop/tools/session-closer) | Quizzes me on each coding session's diff so I understand what I ship | Desktop tray | Planned |
| 4 | [Daily rep](apps/desktop/tools/daily-rep) | One fundamental a day, written by hand against tests, no AI | Desktop | Planned |
| 5 | [Hiring radar](apps/desktop/tools/hiring-radar) | Watches job boards and changelogs, alerts me when a role opens | Desktop tray | Planned |
| 6 | [Answer recorder](apps/android/features/answer-recorder) | One spoken interview answer a day, transcribed and scored on-device | Android | Planned |
| 7 | [Debug journal](apps/desktop/tools/debug-journal) | Logs every bug in ten seconds: guess, root cause, fix, time | Desktop hotkey + Android tile | Planned |
| 8 | [Quality gate](cli/gate) | Pre-commit checks: types, tests, bundle size, perf, a11y, design tokens | Rust CLI + git hook | Planned |

## Layout

```
apps/
  desktop/      Tauri 2 app (React + Rust) — tools 2, 3, 4, 5, 7
  android/      Kotlin + Jetpack Compose — tools 2 (widget), 6, 7 (tile)
cli/
  gate/         Rust quality gate — tool 8
services/
  pulse/        Sync endpoint + MCP server — tool 1
shared/
  schema/       The events table every tool writes to
```

## Rules

- **Installed software only.** A desktop app, an Android app, or a CLI. No web apps, no browser extensions.
- **Everything logs.** Each use writes one row to `events` (see [shared/schema](shared/schema)).
- **No AI inside the apps.** Claude Code and Claude Duet read and write through Pulse, so no app carries its own model or API bill.
- **Code is public, data never is.** Logs, recordings, configs and keys stay out of the repo (see `.gitignore`). Each tool ships a `*.example.*` file showing the shape of its config.

## Build order

1. Pulse + Day planner
2. Session closer + Daily rep
3. Hiring radar + Answer recorder
4. Debug journal + Quality gate

## License

None. This repo is public so it can be read, but it isn't licensed for reuse — all rights reserved. If a tool becomes useful to others, it'll move to its own repo with its own license.
