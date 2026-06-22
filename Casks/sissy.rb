cask "sissy" do
  version "0.1.4"
  sha256 "faa30132407a6a3ba7acf39068263edeae2aeca9b90d6a4b15d902ff3e3f21c6"

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
