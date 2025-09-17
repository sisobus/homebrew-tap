class GhSwitch < Formula
  desc "Switch between multiple GitHub accounts instantly"
  homepage "https://github.com/sisobus/gh-switch"
  url "https://github.com/sisobus/gh-switch/archive/refs/tags/v1.0.3.tar.gz"
  sha256 "bb29f9523dcf38912afbe84a141b7dce4007ccc320dd75846dc3678f144cff84"
  license "MIT"
  version "1.0.3"

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