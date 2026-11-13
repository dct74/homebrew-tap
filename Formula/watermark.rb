# watermark.rb
class Watermark < Formula
  desc "批量图片和PDF文件添加水印"
  homepage "https://github.com/dct74/watermark"
  url "https://github.com/dct74/watermark/releases/download/v0.6/watermark"
  sha256 "f835f524d12a59206665fe4adc3b48d7ddcc76d437baa1fffd47fcda9594417b"

  def install
    bin.install "watermark"
  end

  test do
    system "#{bin}/watermark", "--help"
  end
end
