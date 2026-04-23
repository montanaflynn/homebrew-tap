class Ht < Formula
  desc "Puppeteer for terminal UIs — drive vim, htop, nethack from a CLI or agent"
  homepage "https://github.com/montanaflynn/headless-terminal"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-darwin-arm64.tar.gz"
      sha256 "f99af7a9e20d7d0044ebf9c992924f57baa23bd3ed9d64ed42dc1194eb2294e2"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-amd64.tar.gz"
      sha256 "47ddf3245131d64c855686684a9c545c443a90461386eaa016fe2c202cc31176"
    end
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-arm64.tar.gz"
      sha256 "f7bc1cfc60840d88d8f6db85526b9c0f84c751fb7b949c9d6a22283b7b4e6777"
    end
  end

  def install
    bin.install "ht"
  end

  test do
    assert_match "ht", shell_output("#{bin}/ht --help 2>&1")
  end
end
