cask "capit" do
  version "1.5.2"
  sha256 "9fd3070c76acbdc0d79f6ceb4ea7873eded6abfee3fc5fd2fe2f7bd2977f7d5f"

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
