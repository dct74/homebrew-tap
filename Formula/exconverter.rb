# watermark.rb
class Exconverter < Formula
  desc "Convert excel to folders"
  homepage "https://github.com/dct74/xlconvert"
  url "https://github.com/dct74/xlconvert/releases/download/v0.2/exconverter"
  sha256 "a78ba777d3780675bfc8d8cf79104e5c1ed786d05a8c3947a8619c90c834cd12"
  version "0.2"
  
  def install
    bin.install "exconverter" => "xlconv"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
