-- events: the shared log every tool writes to.
-- Kept to SQL that runs on both SQLite (devices) and Postgres (Pulse).

CREATE TABLE IF NOT EXISTS events (
  id           TEXT PRIMARY KEY,          -- UUID generated on the writing device
  tool         TEXT NOT NULL,             -- planner | session | rep | radar | recorder | debug | gate
  kind         TEXT NOT NULL,             -- tool-specific action, e.g. 'rep_passed'
  occurred_at  TEXT NOT NULL,             -- ISO 8601, UTC
  day          TEXT NOT NULL,             -- YYYY-MM-DD, local date for the heatmap
  value        REAL,                      -- one summary number (score, minutes, count)
  payload      TEXT,                      -- JSON detail
  device       TEXT NOT NULL,             -- laptop | phone
  synced_at    TEXT                       -- NULL until Pulse has it
);

CREATE INDEX IF NOT EXISTS idx_events_day_tool ON events (day, tool);
CREATE INDEX IF NOT EXISTS idx_events_unsynced ON events (synced_at) WHERE synced_at IS NULL;
