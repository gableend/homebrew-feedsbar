# FeedsBar Homebrew tap

[FeedsBar](https://feeds.bar) is a live news ticker for the Mac desktop: an always-on strip of headlines from the [Signal 500](https://feeds.bar/signal-500/), your own feeds, and market quotes, with a full-screen board for reading from across the room.

## Install

```sh
brew install --cask gableend/feedsbar/feedsbar
```

Or tap first:

```sh
brew tap gableend/feedsbar
brew install --cask feedsbar
```

The cask downloads the signed and notarized DMG published at feeds.bar/releases and installs `FeedsBar.app`. FeedsBar needs a licence key from [feeds.bar](https://feeds.bar); the download is the full app and activates in place.

## Update

```sh
brew upgrade --cask feedsbar
```

The cask's `livecheck` reads the current version from the FeedsBar API, so `brew livecheck --cask feedsbar` shows when a new build is out.

## Uninstall

```sh
brew uninstall --cask --zap feedsbar
```

`--zap` also removes the app's container and preferences.

Requires macOS 14 Sonoma or later.
