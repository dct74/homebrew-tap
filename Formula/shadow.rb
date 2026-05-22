# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.4/shadow"
  sha256 "1dbc61c0571e1b9e2db39ffaa8e2d902684a00b2900de5fbe1d3d8d27854eb9e"
  version "0.4"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
