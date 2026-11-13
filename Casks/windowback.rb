cask "windowback" do
  version "0.2.2"
  sha256 "a3682427ad88a304e145342c2f607a9c41794ce957bbb70637f84fc16415bd3c"

  url "https://github.com/dct74/WindowBack/releases/download/v#{version}/WindowBack-#{version}.zip"
  name "WindowBack"
  desc "Pulls windows back onto the screen after an external display is unplugged"
  homepage "https://github.com/dct74/WindowBack"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "WindowBack.app"

  # ad-hoc signed (no Developer ID), so a quarantined copy is blocked by Gatekeeper
  # on first launch. Scoped to this bundle only.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/WindowBack.app"],
                   sudo: false
  end

  uninstall quit: "dev.dct74.windowback"

  zap trash: [
    "~/Library/Logs/WindowBack",
    "~/Library/Preferences/dev.dct74.windowback.plist",
  ]

  caveats <<~EOS
    WindowBack needs Accessibility permission to move other apps' windows:
    System Settings → Privacy & Security → Accessibility.

    Rebuilt/ad-hoc signed builds change their code signature, so the permission
    has to be re-granted after every `brew upgrade`.
  EOS
end
