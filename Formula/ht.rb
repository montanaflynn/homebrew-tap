class Ht < Formula
  desc "Puppeteer for terminal UIs — drive vim, htop, nethack from a CLI or agent"
  homepage "https://github.com/montanaflynn/headless-terminal"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-darwin-arm64.tar.gz"
      sha256 "37460863ef35f008fd89c75539dad54886b7e6f65b8a2aa5867d50672bafb7db"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-amd64.tar.gz"
      sha256 "9ca4e1037d044f3a1113e4f28f6f1ac0004cca0c596d7e9bef3e6f4cabe4a8d9"
    end
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-arm64.tar.gz"
      sha256 "89123383299ac43937123df4b3816d3db0f8138941f6b65dcc5e3d32ab3d614f"
    end
  end

  def install
    bin.install "ht"
  end

  test do
    assert_match "ht", shell_output("#{bin}/ht --help 2>&1")
  end
end
