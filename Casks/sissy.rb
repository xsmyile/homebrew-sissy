cask "sissy" do
  version "0.3.10"
  sha256 "a37dd101c174bcff7ea2434ac3087811c26b79594ec5046f24deb075126f6bc0"

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
