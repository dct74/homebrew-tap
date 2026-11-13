# pdf-toolbox.rb
class PdfToolbox < Formula
  desc "Batch process PDF compression, splitting, PDF to JPEG, and PDF to Word conversion."
  homepage "https://github.com/dct74/pdf-toolbox"
  url "https://github.com/dct74/pdf-toolbox/releases/download/v0.3/pdf-toolbox"
  sha256 "0007089b1ce7cd2258dbcab42795e88c5f9acad2985466795b10ca9b5cb92489"
  version "0.3"
  
  def install
    bin.install "pdf-toolbox" => "pdftool"
  end

  test do
    system "#{bin}/pdftool", "--help"
  end
end
