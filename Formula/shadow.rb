# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.3/shadow"
  sha256 "4e29e203461443858bf8e28c68c47260724646769e901201ee7c74ad7b9bb2fc"
  version "0.3"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
