# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.7/shadow"
  sha256 "c31be3a29f31902d0a9b01c933a0acfd51dc0e80ee34e3cf547392ee1cb5c0a0"
  version "0.7"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
