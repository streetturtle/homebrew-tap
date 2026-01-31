class ClaudeAnywhere < Formula
  desc "Resume any Claude Code session from anywhere"
  homepage "https://github.com/streetturtle/claude-anywhere"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-amd64"
      sha256 "382861bef5cbf3dde8a6d54fbddc3e81e556f155262ab55ed779d55a4dc25898"

      def install
        bin.install "claude-anywhere-darwin-amd64" => "claude-anywhere"
      end
    end

    on_arm do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-arm64"
      sha256 "5efaf2440326abb3ba2c266fff1bb0d7e676d1cab9fd098ac501d74831c17c57"

      def install
        bin.install "claude-anywhere-darwin-arm64" => "claude-anywhere"
      end
    end
  end

  test do
    assert_match "claude-anywhere", shell_output("#{bin}/claude-anywhere --help")
  end
end
