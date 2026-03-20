class Estoppl < Formula
  desc "Compliance proxy for AI agent tool calls (MCP)"
  homepage "https://github.com/estoppl/estoppl"
  version "0.16.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-aarch64.tar.gz"
      sha256 "66ee0ddbd1ffe24c24402aa00191ee2618b43963bab62c0ca97ed44c78f7ae15"
      def install
        bin.install "estoppl-darwin-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-x86_64.tar.gz"
      sha256 "33c5740f842908fd171c22dc9bb1eaabdc85eb51ee3296239ce9fd93fef3caca"
      def install
        bin.install "estoppl-darwin-x86_64" => "estoppl"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-aarch64.tar.gz"
      sha256 "4fa9aebbbc0e405d93ed2622531e7a6faa6a610e0efdb4c3e74d222664a8b9d8"
      def install
        bin.install "estoppl-linux-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-x86_64.tar.gz"
      sha256 "170de5ba9243c4c462b5cd02ccbde0fdaee28d7a7c10a3763cd7b341d24780c9"
      def install
        bin.install "estoppl-linux-x86_64" => "estoppl"
      end
    end
  end

  test do
    assert_match "estoppl", shell_output("#{bin}/estoppl --help")
  end
end
