class Estoppl < Formula
  desc "Compliance proxy for AI agent tool calls (MCP)"
  homepage "https://github.com/estoppl/estoppl"
  version "0.17.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-aarch64.tar.gz"
      sha256 "38217e941681045280bd998caaf79afd6c7b4710faf3c5bf0a8869a8f74602de"
      def install
        bin.install "estoppl-darwin-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-x86_64.tar.gz"
      sha256 "14dd02a7fff17fff092b1045bd78115e301a93d94ca2a683f8225d1f36e05cb8"
      def install
        bin.install "estoppl-darwin-x86_64" => "estoppl"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-aarch64.tar.gz"
      sha256 "23bff80304f3ca88fa04a440e2d03915bb834542cb1da25345ff002824914d37"
      def install
        bin.install "estoppl-linux-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-x86_64.tar.gz"
      sha256 "c63313fac86f6b8b33c1fbf852125becbcc86b1e39a8fb374f12cc2a089f0075"
      def install
        bin.install "estoppl-linux-x86_64" => "estoppl"
      end
    end
  end

  test do
    assert_match "estoppl", shell_output("#{bin}/estoppl --help")
  end
end
