# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.6/shadow"
  sha256 "125ef4feff23e5a557596dc97154d2f4b1eda8ac520c6239429ddb4ab0e16471"
  version "0.6"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
