cask "capit" do
  version "1.2.4"
  sha256 "e62230f57c75d3ab97800067393ce980f723d56d96e4d8c709e3b617aefdc206"

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
