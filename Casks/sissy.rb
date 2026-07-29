cask "sissy" do
  version "0.1.8"
  sha256 "5445c1fac5be58d854c0ee1c65d98cd4727216f22713deb431c572649766c551"

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
