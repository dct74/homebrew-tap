# pdf-toolbox.rb
class pdf-toolbox < Formula
  desc "Batch process PDF compression, splitting, PDF to JPEG, and PDF to Word conversion."
  homepage "https://github.com/dct74/pdf-toolbox"
  url "https://github.com/dct74/pdf-toolbox/releases/download/v0.1/pdf-toolbox"
  sha256 "f0cc2470086a0fc4ae051b414fa561a412bdb05d29026b49ce0422a5134fdc75"
  version "0.1"
  
  def install
    bin.install "pdf-toolbox"
  end

  test do
    system "#{bin}/pdf-toolbox", "--help"
  end
end
