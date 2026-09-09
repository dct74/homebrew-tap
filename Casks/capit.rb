cask "capit" do
  version "v0.2"
  sha256 "6f25ab8fb4dde597a01063b5402845376bfb23595c687ff36adffde9f8fdc0b7"
  url "https://github.com/dct74/capit/releases/download/v0.2/Capit.app.zip"
  name "Capit"
  desc "Minimalist macOS native screenshot tool"
  homepage "https://github.com/dct74/capit"

  # 核心安装指令
  app "capit.app"
end
