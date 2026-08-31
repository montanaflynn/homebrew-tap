class Ht < Formula
  desc "Puppeteer for terminal UIs — drive vim, htop, nethack from a CLI or agent"
  homepage "https://github.com/montanaflynn/headless-terminal"
  version "0.3.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-darwin-arm64.tar.gz"
      sha256 "dcf878cea8c0f90a4f6747c49417819c115b74e050f373a85cdd2d7956f08f76"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-amd64.tar.gz"
      sha256 "b1abf6e96ea81c013bf1db184e67b3bb3ef7db2d3bb39f93860c26075058fa2f"
    end
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-arm64.tar.gz"
      sha256 "14c78ff5416a52b4a224838c520bcd4f6a6cc730aad3d74b099c01c983d64947"
    end
  end

  def install
    bin.install "ht"
  end

  test do
    assert_match "ht", shell_output("#{bin}/ht --help 2>&1")
  end
end
