# homebrew-retrowave

Homebrew tap for [RetroWave](https://github.com/craigday/retrowave), a retro
LED spectrum analyzer for your Mac's audio in a floating transparent window.

```sh
brew install --cask craigday/retrowave/retrowave
```

Releases are signed with a Developer ID and notarised by Apple.

## Updating the cask

After a new release of RetroWave, set `version` and `sha256` in
`Casks/retrowave.rb` to the new tag and the contents of the release's
`RetroWave-<version>.zip.sha256` asset, then commit and push.
