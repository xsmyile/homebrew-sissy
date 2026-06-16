cask "sissy" do
  version "0.1.2"
  sha256 "f453e0b466655cd01c983ce42425b7499de2463c3ae655cc9f6fe6c66f63f65c"

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
