# watermark.rb
class Watermark < Formula
  desc "批量图片和PDF文件添加水印"
  homepage "https://github.com/dct74/watermark"
  url "https://github.com/dct74/watermark/releases/download/v0.2/watermark"
  sha256 "72d30b101a9e0dc9a839ccaf33fdaa8f1d2607e3f15f8185b4cd2bb4e9e92068"
  version "0.2"
  
  def install
    bin.install "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
