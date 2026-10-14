cask "sissy" do
  version "0.3.6"
  sha256 "933acabba14df3a4d060dc7c066bebc439e21d17a0615e0bc69d69b2373e9902"

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
