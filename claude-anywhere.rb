class ClaudeAnywhere < Formula
  desc "Resume any Claude Code session from anywhere"
  homepage "https://github.com/streetturtle/claude-anywhere"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-amd64"
      sha256 "fee61fc00c9e0af6e6ecdc5cd2f4a92871e2134ac0d9fcea75deb9efa8557adb"

      def install
        bin.install "claude-anywhere-darwin-amd64" => "claude-anywhere"
      end
    end

    on_arm do
      url "https://github.com/streetturtle/claude-anywhere/releases/download/v#{version}/claude-anywhere-darwin-arm64"
      sha256 "7259f85d163ddcb0c111d879204cac7758e16e1e347a10c0cf7c2b247ef28ce6"

      def install
        bin.install "claude-anywhere-darwin-arm64" => "claude-anywhere"
      end
    end
  end

  test do
    assert_match "claude-anywhere", shell_output("#{bin}/claude-anywhere --help")
  end
end
