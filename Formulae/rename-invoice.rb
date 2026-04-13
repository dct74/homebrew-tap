# rename-invoice.rb
class RenameInvoice < Formula
  desc "智能识别发票号码并重命名 PDF/图片的 CLI 工具"
  homepage "https://github.com/dct74/rename-invoice"
  url "https://github.com/dct74/rename-invoice/releases/download/v0.1/rename-invoice"
  sha256 "b5bfcb0c9c16a75970cfc97de758bf0b2f82fa613989fd8222dbe9ffe9955c43"
  version "0.1"
  
  def install
    bin.install "rename-invoice"
  end

  test do
    system "#{bin}/rename-invoice", "--help"
  end
end
