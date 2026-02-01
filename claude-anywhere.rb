class ClaudeAnywhere < Formula
  desc "Resume any Claude Code session from anywhere"
  homepage "https://github.com/streetturtle/claude-anywhere"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-amd64"
      sha256 "98db36f0ce193f96f4baec11811813e23c2ab7faa8fd2d4c2e5bc7947c8781e0"

      def install
        bin.install "claude-anywhere-darwin-amd64" => "claude-anywhere"
      end
    end

    on_arm do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-arm64"
      sha256 "51e1fdf98f5295b47fef9574a6cceda47fdfcd91179c1bb1e1a65ede54300f72"

      def install
        bin.install "claude-anywhere-darwin-arm64" => "claude-anywhere"
      end
    end
  end

  test do
    assert_match "claude-anywhere", shell_output("#{bin}/claude-anywhere --help")
  end
end
