class ClaudeAnywhere < Formula
  desc "Resume any Claude Code session from anywhere"
  homepage "https://github.com/streetturtle/claude-anywhere"
  version "0.2.2"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-amd64"
      sha256 "1548737885e2701adc473e5a4c01a26809c6ecc6371d2922e94633f25a43f6f7"

      def install
        bin.install "claude-anywhere-darwin-amd64" => "claude-anywhere"
      end
    end

    on_arm do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-arm64"
      sha256 "ce9438b63173515771364ba6a8134518ae362454d9f295f77e8ec9067a7f2968"

      def install
        bin.install "claude-anywhere-darwin-arm64" => "claude-anywhere"
      end
    end
  end

  test do
    assert_match "claude-anywhere", shell_output("#{bin}/claude-anywhere --help")
  end
end
