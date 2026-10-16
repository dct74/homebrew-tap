cask "capit" do
  version "1.0.3"
  sha256 "237afefd51aa1a6d0e1af55d4e273440d1f14b12a92a96026267065875e1cf5e"

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
