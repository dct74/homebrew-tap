# watermark.rb
class Watermark < Formula
  desc "批量图片和PDF文件添加水印"
  homepage "https://github.com/dct74/watermark"
  url "https://github.com/dct74/watermark/releases/download/v0.4/watermark"
  sha256 "367b85ddde4991ff49dfe6d9102620c2d35f8bbb6229aa3821b2003f51fb83ce"
  version "0.4"
  
  def install
    bin.install "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
