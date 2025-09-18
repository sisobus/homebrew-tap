class GhSwitch < Formula
  desc "Switch between multiple GitHub accounts instantly"
  homepage "https://github.com/sisobus/gh-switch"
  url "https://github.com/sisobus/gh-switch/archive/refs/tags/v1.0.5.tar.gz"
  sha256 "d0e2e1a00d517847bbc64694eab8f6cfcff71bc63df3aece2d050b226d3eaf27"
  license "MIT"
  version "1.0.5"

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