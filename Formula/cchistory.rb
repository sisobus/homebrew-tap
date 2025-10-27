class Cchistory < Formula
  desc "Interactive CLI tool to browse Claude Code conversation history"
  homepage "https://github.com/sisobus/claude-code-conversation-history"
  url "https://github.com/sisobus/claude-code-conversation-history/archive/refs/tags/v1.0.1.tar.gz"
  sha256 "PLACEHOLDER_SHA256"  # Will be updated by release.sh
  license "MIT"
  version "1.0.1"

  depends_on "python@3.9"

  def install
    # Install the Python script
    bin.install "claude-history.py" => "cchistory"
  end

  def caveats
    <<~EOS
      Claude Code Conversation History Viewer has been installed!

      Usage:
        cchistory         - Launch the interactive viewer
        cchistory --help  - Show help information

      The tool will look for Claude conversation history in:
        ~/.claude/projects/

      Navigation:
        - Use ↑/↓ arrow keys to navigate
        - Press Enter to select
        - Press 'q' to quit

    EOS
  end

  test do
    assert_match "cchistory version", shell_output("#{bin}/cchistory --version")
  end
end