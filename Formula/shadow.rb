# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.5/shadow"
  sha256 "ec977fc6850da25759ea3f5db3d1fb4f4be43ef6fdda436e0214b8883e2b4e5e"
  version "0.5"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
