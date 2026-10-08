cask "capit" do
  version "1.0"
  sha256 "45a52ee52576fad7f7d3ad93d66f998eae3a0c1e8fc2f76842668144db23bd38"

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
