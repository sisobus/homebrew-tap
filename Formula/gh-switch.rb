class GhSwitch < Formula
  desc "Switch between multiple GitHub accounts instantly"
  homepage "https://github.com/sisobus/gh-switch"
  url "https://github.com/sisobus/gh-switch/archive/refs/tags/v1.0.2.tar.gz"
  sha256 "a3d2c35dba7822b7be0a3e2714c0e3d44831e6d1e199fed04ddc77bef8ba22b8"
  license "MIT"
  version "1.0.2"

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