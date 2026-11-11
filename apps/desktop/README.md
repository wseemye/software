# desktop

One Tauri 2 app on Windows that holds five tools. It lives in the system tray, launches at login, and writes everything to a local SQLite copy of [`events`](../../shared/schema), which [Pulse](../../services/pulse) syncs.

| Tool | Form |
|---|---|
| [Day planner](tools/day-planner) | Frameless widget pinned to the desktop |
| [Session closer](tools/session-closer) | Hotkey window after a coding session |
| [Daily rep](tools/daily-rep) | Window with a timer and test runner |
| [Hiring radar](tools/hiring-radar) | Background job + notifications |
| [Debug journal](tools/debug-journal) | Hotkey capture form |

## Stack

- **UI:** React + TypeScript + Vite
- **Backend:** Rust (rusqlite, git2, tokio, reqwest)
- **Tauri plugins:** autostart, global-shortcut, notification, tray
- **Platform:** Windows 11 (WebView2). Unsigned builds; SmartScreen warns once on install.

## Notes

- Repos the session closer watches stay on the Windows filesystem. File watching across the WSL boundary is unreliable.
- No AI calls from this app. Anything that needs Claude goes through Pulse.

## First step

`npm create tauri-app@latest` here, then add the tray icon and autostart before any tool.
