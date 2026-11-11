# Quality gate

Nothing gets committed unless it passes my own standards.

A Rust CLI that runs as a git pre-commit hook across all my projects. If a check fails, the commit stops and says why. If I break a rule on purpose, I log the reason with `gate except "<reason>"`. Exceptions that repeat mean the standard needs to change.

## Checks

| Check | Tool | Blocks commit? |
|---|---|---|
| Types | `tsc --noEmit` | Yes |
| Tests | Vitest | Yes |
| Bundle size | size-limit | Yes, over budget |
| Accessibility | axe-core | Yes, on serious/critical |
| Performance | Lighthouse CI | Warns locally, blocks in CI |
| Design tokens | built-in scanner over TSX/CSS: raw hex colors, off-scale spacing, stray font families | Yes |

## Stack

- Rust, compiled to a Windows `.exe`
- Hook installed through Git for Windows
- Token rules read from a `tokens.json` in each project
- Results written to `events` as `tool = 'gate'` via [Pulse](../../services/pulse)

## Logs

| `kind` | `value` |
|---|---|
| `commit_passed` | checks run |
| `commit_blocked` | checks failed |
| `exception_logged` | 1 |

## Cost

$0. Open-source tools, run locally.

## First step

A pre-commit hook that runs `tsc` and the tests and records pass or fail. One more check per week, tokens first.
