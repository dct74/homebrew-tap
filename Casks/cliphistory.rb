cask "cliphistory" do
  version "1.5.0"
  sha256 "b2dbeaa4b486d8637fbd2cfd0fac562ac8cce81bc4aa3c00b8e61e2dd10602aa"

  url "https://github.com/dct74/ClipHistory/releases/download/v#{version}/ClipHistory.dmg",
      verified: "github.com/dct74/ClipHistory/"
  name "ClipHistory"
  desc "Menu bar clipboard history with caret-anchored popup and ordered paste"
  homepage "https://github.com/dct74/ClipHistory"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "ClipHistory.app"

  zap trash: [
    "~/Library/Application Support/ClipHistory",
    "~/Library/Preferences/com.weiyuankong.cliphistory.plist",
  ]

  caveats <<~EOS
    ClipHistory needs Accessibility permission to paste into other apps:
    System Settings → Privacy & Security → Accessibility.
  EOS
end
