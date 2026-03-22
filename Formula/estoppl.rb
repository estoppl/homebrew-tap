class Estoppl < Formula
  desc "Compliance proxy for AI agent tool calls (MCP)"
  homepage "https://github.com/estoppl/estoppl"
  version "0.18.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-aarch64.tar.gz"
      sha256 "ae1b524b8423de6d2610a3766a8eebdbf0364937cb907781b1025c6c0397bfd7"
      def install
        bin.install "estoppl-darwin-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-x86_64.tar.gz"
      sha256 "c80f62286f232be9523feaece8945dcca47306224e6a9a323ed8bf22bff0cfaa"
      def install
        bin.install "estoppl-darwin-x86_64" => "estoppl"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-aarch64.tar.gz"
      sha256 "71c382b56e930efcae796981108cdccf0cc72ff7332e2e61d72e13b56963e54b"
      def install
        bin.install "estoppl-linux-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-x86_64.tar.gz"
      sha256 "480a912ac486a84abec609340f542bb4f1668f95e127aabd5f2f8e0883d2ac61"
      def install
        bin.install "estoppl-linux-x86_64" => "estoppl"
      end
    end
  end

  test do
    assert_match "estoppl", shell_output("#{bin}/estoppl --help")
  end
end
