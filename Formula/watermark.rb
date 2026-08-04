# watermark.rb
class Watermark < Formula
  desc "批量图片和PDF文件添加水印"
  homepage "https://github.com/dct74/watermark"
  url "https://github.com/dct74/watermark/releases/download/v0.3/watermark"
  sha256 "a6cae8b575df1e5b27b24a2150fcd62d628437f7f572ae58a66ecb34f247777c"
  version "0.3"
  
  def install
    bin.install "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
