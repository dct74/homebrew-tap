cask "mix-recording" do
  version "1.0.2"
  sha256 "b6667888f36d9414b98befaaa9fb86d0d71176f8dd760b6afcc476f84f0f1f7e"

  url "https://github.com/dct74/Mix-Recording/releases/download/v#{version}/Mix-Recording-#{version}.zip"
  name "Mix-Recording"
  desc "Record the microphone, the system audio, or both at once"
  homepage "https://github.com/dct74/Mix-Recording"

  # macOS-only app; without this Homebrew's cross-platform validation rejects the cask
  depends_on macos: :ventura

  app "Mix-Recording.app"

  # The app is signed ad-hoc ("Sign to Run Locally") instead of notarized, so a
  # quarantined copy is blocked by Gatekeeper on first launch.
  postflight_steps do
    run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{appdir}}/Mix-Recording.app"]
  end

  uninstall quit: "io.github.dct74.Mix-Recording"

  zap trash: [
    "~/Library/Containers/io.github.dct74.Mix-Recording",
    "~/Library/Preferences/io.github.dct74.Mix-Recording.plist",
    "~/Library/Saved Application State/io.github.dct74.Mix-Recording.savedState",
  ]
end
