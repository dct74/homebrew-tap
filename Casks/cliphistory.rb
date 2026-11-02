cask "cliphistory" do
  version "1.5.1"
  sha256 "ce39f6c35c0ea54a07ca3b1ea44c90b869fcf507e26c0ca89d32009f6a3b8877"

  url "https://github.com/dct74/ClipHistory/releases/download/v#{version}/ClipHistory.dmg"
  name "ClipHistory"
  desc "Menu bar clipboard history with caret-anchored popup and ordered paste"
  homepage "https://github.com/dct74/ClipHistory"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "ClipHistory.app"

  # The app is ad-hoc signed (no Developer ID), so a quarantined copy is blocked
  # by Gatekeeper on first launch. Same effect as `--no-quarantine`, applied only
  # to this app bundle.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ClipHistory.app"],
                   sudo: false
  end

  zap trash: [
    "~/Library/Application Support/ClipHistory",
    "~/Library/Preferences/com.weiyuankong.cliphistory.plist",
  ]

  caveats <<~EOS
    ClipHistory needs Accessibility permission to paste into other apps:
    System Settings → Privacy & Security → Accessibility.
  EOS
end
