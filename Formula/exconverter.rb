# watermark.rb
class Exconverter < Formula
  desc "Convert excel to folders"
  homepage "https://github.com/dct74/xlconvert"
  url "https://github.com/dct74/xlconvert/releases/download/v0.1/exconverter"
  sha256 "c15a5b199dca8d811fc4a0bbaf34885dff6a314f33e4f9d931c15a1024b2d5ed"
  version "0.1"
  
  def install
    bin.install "exconverter" => "xlconv"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
