# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.1/shadow"
  sha256 "ea0707c5b29f11337b8667faaca071b86c71487f70c2b71ac83ff4f450b73c8d"
  version "0.1"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
