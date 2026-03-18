class Estoppl < Formula
  desc "Compliance proxy for AI agent tool calls (MCP)"
  homepage "https://github.com/estoppl/estoppl"
  version "0.11.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-aarch64.tar.gz"
      sha256 "f3be2f26575cefc06133d4b84fe8c033d818f12291166ad5899c23d422e716d1"

      def install
        bin.install "estoppl-darwin-aarch64" => "estoppl"
      end
    end

    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-x86_64.tar.gz"
      sha256 "2c9c81af57e14b4ad191dd62b0cece7c984fb22bdbf3e7e6198d82d17991a880"

      def install
        bin.install "estoppl-darwin-x86_64" => "estoppl"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-aarch64.tar.gz"
      sha256 "a6491cee1f9813e4aa8014afb187905c29793ecaf1d9cb7fa82285aacc16ca5d"

      def install
        bin.install "estoppl-linux-aarch64" => "estoppl"
      end
    end

    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-x86_64.tar.gz"
      sha256 "6b7d73f96b24b62eeef091d2417688e801d8ab2d4c499d1a8b682ccfae33fe5f"

      def install
        bin.install "estoppl-linux-x86_64" => "estoppl"
      end
    end
  end

  test do
    assert_match "estoppl", shell_output("#{bin}/estoppl --help")
  end
end
