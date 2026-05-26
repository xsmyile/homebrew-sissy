# Sissy Homebrew Tap

Homebrew tap for [Sissy](https://github.com/xsmyile/sissy) — menubar token usage mascot for Claude Code and Codex, with a companion ESP32 OLED device.

## Install

```bash
brew install --cask xsmyile/sissy/sissy
```

The cask installs `Sissy.app` into `/Applications`. The bundled `sissy-serverd` daemon registers as a per-user LaunchAgent on first launch via `SMAppService`.

## Update

```bash
brew update
brew upgrade --cask sissy
```

## Uninstall

```bash
brew uninstall --cask sissy
```

`brew uninstall --cask --zap sissy` additionally removes the daemon's state directory at `~/Library/Application Support/Sissy` and the LaunchAgent plist.

## Requirements

- macOS 26 (Tahoe) or later — matches the app's `LSMinimumSystemVersion`.

## How updates land

The cask file is regenerated automatically by [sissy's release workflow](https://github.com/xsmyile/sissy/blob/master/.github/workflows/release.yml) whenever a `v*` tag is pushed. No manual editing.

## License

MIT — see [LICENSE](LICENSE). The cask packaging is MIT; the app itself is also MIT.
