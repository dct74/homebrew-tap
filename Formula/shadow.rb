# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.8/shadow"
  sha256 "ecb9602b90371ae33d8be857096b2c9ce6e25d3af71e8f6f9c30e85cc97c9f13"
  version "0.8"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
