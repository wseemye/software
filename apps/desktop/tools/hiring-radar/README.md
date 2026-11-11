# Hiring radar

I don't apply to job posts. I apply to changelogs.

Every morning it checks the job boards of the companies I care about, compares them with yesterday, and notifies me the day a relevant role opens. It also watches each company's changelog, release notes or public GitHub, so outreach can mention something they shipped that week. A day only counts as used if I sent a message because of it.

## Stack

- Rust background job in the tray app (tokio, reqwest) on a morning schedule
- Public job-board APIs: Greenhouse, Ashby, Lever
- RSS and the GitHub API for changelogs and releases
- Diff and dedupe in SQLite; Windows notifications; a nudge through [Pulse](../../../../services/pulse)

## Config

The company list is private and gitignored. Copy `companies.example.json` to `companies.json`:

```json
[
  { "name": "Example Co", "board": "ashby", "slug": "exampleco", "changelog": "https://example.com/changelog.rss" }
]
```

## Logs

| `kind` | `value` |
|---|---|
| `roles_found` | new matching roles that day |
| `outreach_sent` | 1 per message sent off a radar alert |
| `reply_received` | 1 per reply |

## Cost

$0. Board APIs are public; a free GitHub token covers the rate limits.

## First step

Pull one Ashby board and one Greenhouse board into SQLite and print what changed since the last run.
