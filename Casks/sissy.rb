cask "sissy" do
  version "0.3.2"
  sha256 "c0a3feb9870d6c060d74a626aa4382e77d847b30ecda0b32026c066a30f9124d"

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
