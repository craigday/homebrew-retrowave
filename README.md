# RetroWave

![RetroWave drawing a spectrum over the desktop](docs/retrowave.gif)

A retro LED spectrum analyzer for your Mac. It listens to whatever your Mac
is playing and draws a 20-band LED-style display in a floating transparent
window, with twenty colour modes, peak hold, beat flash, and a sweep
animation when the music stops.

Requires macOS 14.2 or later. Universal binary, signed and notarised.

## Install

```sh
brew install --cask craigday/retrowave/retrowave
```

Homebrew asks you to trust the tap the first time. On first launch macOS
asks to allow system audio recording; RetroWave records nothing, it only
reads the audio to draw the display.

Without Homebrew: download `RetroWave-<version>.zip` from the
[releases page](https://github.com/craigday/homebrew-retrowave/releases)
and drag the app into `/Applications`.

## Upgrade

```sh
brew upgrade --cask retrowave
```

## Support

Found a bug or want a feature? Open an
[issue](https://github.com/craigday/homebrew-retrowave/issues). Please include
your macOS version and the RetroWave version shown at the top of its menu.

## About this repository

This is the Homebrew tap and release host for RetroWave. The source code is
not published. Releases are built, signed, and notarised by a CI pipeline
that also updates `Casks/retrowave.rb` with each version.

© 2026 Craig Day. All rights reserved. RetroWave is free to use; the source is
not published under an open-source licence.
