class Estoppl < Formula
  desc "Compliance proxy for AI agent tool calls (MCP)"
  homepage "https://github.com/estoppl/estoppl"
  version "0.22.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-aarch64.tar.gz"
      sha256 "99c275b303be43b3f9f5205635c1c103e709c581c40cceb981b47889cb6d4a31"
      def install
        bin.install "estoppl-darwin-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-x86_64.tar.gz"
      sha256 "f94d67e765cf19a39510a8a85732cd2dd9d4c9b6a9efcce2f1890131bdc9707b"
      def install
        bin.install "estoppl-darwin-x86_64" => "estoppl"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-aarch64.tar.gz"
      sha256 "0b59bfcb7a11304d4c99560a45b3936f7655775195bc0dfddfbe8731d96b1126"
      def install
        bin.install "estoppl-linux-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-x86_64.tar.gz"
      sha256 "8b2c9c8de9614a79a33bdf6280a07cfc1832bd7d5eed1f79e0d6a631a42a92d6"
      def install
        bin.install "estoppl-linux-x86_64" => "estoppl"
      end
    end
  end

  test do
    assert_match "estoppl", shell_output("#{bin}/estoppl --help")
  end
end
