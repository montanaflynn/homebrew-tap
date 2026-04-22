class Ht < Formula
  desc "Puppeteer for terminal UIs — drive vim, htop, nethack from a CLI or agent"
  homepage "https://github.com/montanaflynn/headless-terminal"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-darwin-arm64.tar.gz"
      sha256 "10bff25d6af57e9e998244a61a1b3b2f1d7e70657ac3b74812be6e03435affa6"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-amd64.tar.gz"
      sha256 "393f32146e01deed089167731a21b6ad0e1c739f6fa000186bbc47c2614ac572"
    end
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-arm64.tar.gz"
      sha256 "c4af06a31eb7bbb6354a6c9ea4c1fa4a1118a723886fe5f1ce0a28a3b18d5f77"
    end
  end

  def install
    bin.install "ht"
  end

  test do
    assert_match "ht", shell_output("#{bin}/ht --help 2>&1")
  end
end
