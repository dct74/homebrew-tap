class AutoSwitchTermTheme < Formula
  desc "Automatically switch the macOS Terminal profile with the system appearance"
  homepage "https://github.com/dct74/auto-switch-term-theme"
  url "https://github.com/dct74/auto-switch-term-theme.git",
      tag:      "v1.0.0",
      revision: "1c7fc9d4fa69e9f1c5900acbca2862dcecd93ffa"
  license "MIT"
  head "https://github.com/dct74/auto-switch-term-theme.git", branch: "main"

  depends_on :macos
  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  # `keep_alive true` (not `successful_exit: true`) is the important part: the
  # service must come back after *any* exit, otherwise a single crash leaves the
  # Terminal profile frozen forever.
  service do
    run [opt_bin/"auto-switch-term-theme", "watch"]
    keep_alive true
    log_path var/"log/auto-switch-term-theme.log"
    error_log_path var/"log/auto-switch-term-theme.err.log"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/auto-switch-term-theme --version")
  end
end
