cask "sissy" do
  version "0.1.3"
  sha256 "dd1d07a440ba7ff0fcd2c20b6ee610626eca7ffb172503602c804addfee97e54"

  url "https://github.com/xsmyile/sissy/releases/download/v#{version}/Sissy-#{version}.dmg"
  name "Sissy"
  desc "Menubar token usage mascot for Claude Code and Codex"
  homepage "https://github.com/xsmyile/sissy"

  depends_on macos: :tahoe

  app "Sissy.app"

  uninstall launchctl: "com.radonforge.sissy.server",
            quit:      "com.radonforge.sissy"

  zap trash: [
    "~/Library/Application Support/Sissy",
    "~/Library/Preferences/com.radonforge.sissy.plist",
    "~/Library/Caches/com.radonforge.sissy",
    "~/Library/LaunchAgents/com.radonforge.sissy.server.plist",
  ]
end
