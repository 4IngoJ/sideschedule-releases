# sideschedule-releases

Public releases and [Sparkle](https://sparkle-project.org) appcast feed for
[Sideschedule](https://github.com/4IngoJ/sideschedule) — a macOS
day-calendar sidebar app. The source repo stays private; this one exists
only so the app's built binaries and update feed have a public URL for
Sparkle to fetch and for anyone to download from directly.

No source code lives here.

## Latest release

See [Releases](https://github.com/4IngoJ/sideschedule-releases/releases).

## For the app

`SUFeedURL` in the app points at:

```
https://github.com/4IngoJ/sideschedule-releases/releases/latest/download/appcast.xml
```

which resolves to the `appcast.xml` asset on whichever release is tagged
latest.
