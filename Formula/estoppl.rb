class Estoppl < Formula
  desc "Compliance proxy for AI agent tool calls (MCP)"
  homepage "https://github.com/estoppl/estoppl"
  version "0.14.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-aarch64.tar.gz"
      sha256 "d2e1a7a3c7ba022a5b55d7134da83471f270d46efb9ae3488639f705b21ad9ea"
      def install
        bin.install "estoppl-darwin-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-darwin-x86_64.tar.gz"
      sha256 "980daf3e936d2065844cc2be5b5afa200de701f4f1dba9c0838c21301efec7d0"
      def install
        bin.install "estoppl-darwin-x86_64" => "estoppl"
      end
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-aarch64.tar.gz"
      sha256 "3ef78ae97ed5ad45a71b1e52bf2cb08ba8641f7a2b5953561e847d0950fe75f4"
      def install
        bin.install "estoppl-linux-aarch64" => "estoppl"
      end
    end
    on_intel do
      url "https://github.com/estoppl/estoppl/releases/download/v#{version}/estoppl-linux-x86_64.tar.gz"
      sha256 "7c4725b1b6a467f5b173f4c0d4a2296bffee6959552e2b598881b7006660ff6a"
      def install
        bin.install "estoppl-linux-x86_64" => "estoppl"
      end
    end
  end

  test do
    assert_match "estoppl", shell_output("#{bin}/estoppl --help")
  end
end
