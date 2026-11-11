# android

One native Android app for a Samsung S24 FE, sideloaded rather than published. It holds the phone side of three tools and keeps a Room copy of [`events`](../../shared/schema) that [Pulse](../../services/pulse) syncs.

| Feature | For tool | Form |
|---|---|---|
| [Answer recorder](features/answer-recorder) | Answer recorder | Full app screen |
| [Planner widget](features/planner-widget) | Day planner | Home screen widget |
| [Debug tile](features/debug-tile) | Debug journal | Quick Settings tile |

## Stack

- Kotlin + Jetpack Compose
- Jetpack Glance for the home screen widget
- Room for local storage, WorkManager for sync
- whisper.cpp through JNI for on-device transcription

## Notes

- One UI kills background apps aggressively. The app goes in **Settings → Battery → Background usage limits → Never sleeping apps**.
- Reminders use exact alarms, which need the `SCHEDULE_EXACT_ALARM` permission on recent Android versions.
- Installed from Android Studio over wireless debugging, or as a sideloaded APK. No Play Store, no signing fees.

## First step

New Compose project here, with Room set up against the `events` schema.
