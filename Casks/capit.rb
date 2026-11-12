cask "capit" do
  version "1.5.8"
  sha256 "6e140eeaeb92783749c7c9565f44b3bf169ea0f15a4416b03b3eb5206c423584"

  url "https://github.com/dct74/capit/releases/download/v#{version}/Capit-#{version}.zip"
  name "Capit"
  desc "Menu-bar screenshot annotation tool for macOS"
  homepage "https://github.com/dct74/capit"

  depends_on macos: :ventura

  app "Capit.app"

  caveats <<~EOS
    Capit is ad-hoc signed (not notarized). If macOS blocks the first launch, run:
      xattr -dr com.apple.quarantine "#{appdir}/Capit.app"
    Then grant Screen Recording in System Settings → Privacy & Security, and relaunch Capit.
  EOS
end
