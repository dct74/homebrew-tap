# pdf-toolbox.rb
class PdfToolbox < Formula
  desc "Batch process PDF compression, splitting, PDF to JPEG, and PDF to Word conversion."
  homepage "https://github.com/dct74/pdf-toolbox"
  url "https://github.com/dct74/pdf-toolbox/releases/download/v0.2/pdf-toolbox"
  sha256 "4888392bcf67ba43b3ef2a469831703c17bb811f2afbf68b0b5cdc295695210b"
  version "0.2"
  
  def install
    bin.install "pdf-toolbox" => "pdftool"
  end

  test do
    system "#{bin}/pdf-toolbox", "--help"
  end
end
