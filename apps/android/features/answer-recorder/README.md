# Answer recorder

A black box for my interview answers.

One interview question a day, answered out loud in two minutes. The phone transcribes it and scores the answer: seconds until I state my point, filler words, total length, and whether I named a tradeoff and a number. Each week I replay my weakest answer and record it again.

## Stack

- Compose screen: question, record button, timer
- whisper.cpp on-device (small model, downloaded once, gitignored under `models/`) for transcription with word timestamps
- Local scoring rules in Kotlin for timing and filler words
- Deeper grading by Claude through [Pulse](../../../../services/pulse)
- Audio and transcripts stay on the phone (gitignored `recordings/`, `transcripts/`); only scores sync

## Logs

| `kind` | `value` |
|---|---|
| `answer_recorded` | overall score (0–1) |
| `answer_rerecorded` | score change vs. the earlier take |

## Cost

$0. No cloud speech API.

## First step

A screen with one question and a record button that saves the audio and shows its length.
