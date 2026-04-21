# watermark.rb
class Watermark < Formula
  desc "批量图片和PDF文件添加水印"
  homepage "https://github.com/dct74/watermark"
  url "https://github.com/dct74/watermark/releases/download/v0.1/watermark"
  sha256 "c850fdc2641eeeae2ca5b8f3858a6a7cb2721b645bde71827ae0916151af8b8d"
  version "0.1"
  
  def install
    bin.install "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
