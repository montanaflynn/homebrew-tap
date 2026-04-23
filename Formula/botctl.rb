class Botctl < Formula
  desc "Process manager for autonomous AI agent bots"
  homepage "https://github.com/montanaflynn/botctl"
  version "0.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/botctl/releases/download/v#{version}/botctl-v#{version}-darwin-arm64.tar.gz"
      sha256 "015323e21f73932ff05a917b184d9576b6f776262b2c200daf5721e1e5cfa495"
    end
    on_intel do
      url "https://github.com/montanaflynn/botctl/releases/download/v#{version}/botctl-v#{version}-darwin-amd64.tar.gz"
      sha256 "a8e5b5e5301d0cb89eb9f78c6a473778eabc2b0fc78672e0d6b62140ff2c5542"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/botctl/releases/download/v#{version}/botctl-v#{version}-linux-amd64.tar.gz"
      sha256 "3f1d1e21ee0cfad42c3a9d8b61b759dc286673e5703f2fd5e5738b90df544631"
    end
    on_arm do
      url "https://github.com/montanaflynn/botctl/releases/download/v#{version}/botctl-v#{version}-linux-arm64.tar.gz"
      sha256 "a0c75d3c58a1bb4411844ccbb4c0ad6707b166ac5cfac39233cf08c94ad546d3"
    end
  end

  def install
    bin.install "botctl"
  end

  test do
    assert_match "botctl", shell_output("#{bin}/botctl --version 2>&1")
  end
end
