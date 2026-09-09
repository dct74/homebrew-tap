cask "capit" do
  version "v0.1"
  sha256 "4aeb5aab18ab6e7731018e67ed67d85a208ec56fc8a6f0436511e5abf14d50a6"

  url "https://github.com/dct74/capit/releases/download/v0.1/Capit.app.zip"
  name "Capit"
  desc "Minimalist macOS native screenshot tool"
  homepage "https://github.com/dct74/capit"

  # 核心安装指令
  app "capit.app"
end