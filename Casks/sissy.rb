cask "sissy" do
  version "0.2.0"
  sha256 "4ac06bd91a652750d4cfb70eb178909bc655740fe4ebe03401e8ddcccfd31a71"

  url "https://github.com/xsmyile/sissy/releases/download/v#{version}/Sissy-#{version}.dmg"
  name "Sissy"
  desc "Menu bar meter for Claude Code and Codex spend, rate limits and activity"
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
