# shadow.rb
class Shadow < Formula
  desc "Batch add shadow to images"
  homepage "https://github.com/dct74/shadow"
  url "https://github.com/dct74/shadow/releases/download/v0.2/shadow"
  sha256 "8e083c5c8ded6ebcfc35f2ccfd580941ff526d6366cfe277c87c36f074ac561c"
  version "0.2"
  
  def install
    bin.install "shadow"
  end

  test do
    system "#{bin}/shadow", "--help"
  end
end
