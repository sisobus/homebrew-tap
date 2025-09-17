class GhSwitch < Formula
  desc "Switch between multiple GitHub accounts instantly"
  homepage "https://github.com/sisobus/gh-switch"
  url "https://github.com/sisobus/gh-switch/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "5c7be42b9f9f3b9f3bcd6761ec4d184a26b6757ca95dc58e18011ae2b57bc1ea"
  license "MIT"
  version "1.0.1"

  depends_on "gh"
  depends_on "git"

  def install
    bin.install "ghs"
  end

  def caveats
    <<~EOS
      To set up your GitHub accounts, run:
        ghs setup

      Usage:
        ghs main     - Switch to main account
        ghs second   - Switch to secondary account
        ghs          - Show current status
        ghs clean    - Clean URL rewrites
        ghs help     - Show help

    EOS
  end

  test do
    assert_match "GitHub Account Switcher", shell_output("#{bin}/ghs help")
  end
end