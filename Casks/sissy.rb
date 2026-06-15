cask "sissy" do
  version "0.1.1"
  sha256 "428eb883b627565866c053ad7729069ab57a7eb6709db6651906be5d3c53e898"

  url "https://github.com/xsmyile/sissy/releases/download/v#{version}/Sissy-#{version}.dmg"
  name "Sissy"
  desc "Menubar token usage mascot for Claude Code and Codex"
  homepage "https://github.com/xsmyile/sissy"

  depends_on macos: ">= :tahoe"

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
