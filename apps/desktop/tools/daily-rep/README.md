# Daily rep

One fundamental a day, from scratch, no AI.

The app hands me one building block, starts a timer, and runs its tests when I'm done. Pass or fail and the time taken get logged. Later, an optional site blocker keeps distracting sites locked until the day's rep passes.

## Reps (first 30)

debounce · throttle · retry with backoff · LRU cache · memoize · deep clone · deep equal · event emitter · promise pool · `Promise.all` · `Promise.allSettled` · curry · pipe/compose · flatten · groupBy · virtualized list · infinite scroll · accessible combobox · modal with focus trap · tabs (WAI-ARIA) · toast queue · drag to reorder · undo/redo stack · simple store with selectors · `useDebounce` · `useFetch` with abort · tiny router · trie autocomplete · diffing two lists · rate limiter

## Stack

- A window in the desktop app
- Prompts and Vitest test files live in `reps/` in this folder; each solution is committed once it passes, so the history doubles as the record
- Rust shells out to Vitest and reads the result
- Logs to `events` as `tool = 'rep'`

## Logs

| `kind` | `value` |
|---|---|
| `rep_passed` | minutes taken |
| `rep_failed` | minutes taken |

## Cost

$0.

## First step

Write the first test file (debounce) and do the first few reps by hand before building any UI.
