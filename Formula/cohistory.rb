class Cohistory < Formula
  desc "Interactive CLI tool to browse Codex conversation history"
  homepage "https://github.com/sisobus/codex-conversation-history"
  url "https://github.com/sisobus/codex-conversation-history/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "c275aee96ee5defbfd47716d9c4dffdeb1f5fd1ec57bf5b6bf83ea69f2efd772"
  license "MIT"
  version "1.0.0"

  depends_on "python@3.9"

  def install
    bin.install "cohistory.py" => "cohistory"
  end

  def caveats
    <<~EOS
      Codex Conversation History Viewer has been installed!

      Usage:
        cohistory         - Launch the interactive viewer
        cohistory --help  - Show help information

      The tool will look for Codex conversation history in:
        ~/.codex/sessions/

      Navigation:
        - Use ↑/↓ arrow keys to navigate
        - Use PgUp/PgDn to flip pages when available
        - Press Enter to select
        - Press 'q' to quit

    EOS
  end

  test do
    assert_match "cohistory version", shell_output("#{bin}/cohistory --version")
  end
end
