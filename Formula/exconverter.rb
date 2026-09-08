# xlconv.rb
class Exconverter < Formula
  desc "Convert excel to folders"
  homepage "https://github.com/dct74/xlconvert"
  url "https://github.com/dct74/xlconvert/releases/download/v0.2/xlconv"
  sha256 "8f588221304c44acf935f2a1a6760687f82839a61a51566f9a99aa1ca8f0c99c"
  version "0.2"
  
  def install
    bin.install "xlconv"
  end

  test do
    system "#{bin}/xlconv", "--help"
  end
end
