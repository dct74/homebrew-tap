# watermark.rb
class Watermark < Formula
  desc "批量图片和PDF文件添加水印"
  homepage "https://github.com/dct74/watermark"
  url "https://github.com/dct74/watermark/releases/download/v0.5/watermark"
  sha256 "6bf8fe06322b8ad6dc80df648c3645bc46c688988aa81750e16af803e7eb9ecb"

  def install
    bin.install "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
