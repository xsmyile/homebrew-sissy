cask "sissy" do
  version "0.4.2"
  sha256 "f836eda536fb5116e77bc6bf5c9a2dccea0e11225f68b5934011ddacba86c7a4"

  url "https://github.com/xsmyile/sissy/releases/download/v#{version}/Sissy-#{version}.dmg"
  name "Sissy"
  desc "Menu bar companion for developers: agent limits and spend, system health, git"
  homepage "https://sissy.smyile.com"

  depends_on macos: :tahoe
  # Sissy updates itself through Sparkle, so Homebrew leaves it to
  # the app unless asked with --greedy.
  auto_updates true

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
