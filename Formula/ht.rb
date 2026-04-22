class Ht < Formula
  desc "Puppeteer for terminal UIs — drive vim, htop, nethack from a CLI or agent"
  homepage "https://github.com/montanaflynn/headless-terminal"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-darwin-arm64.tar.gz"
      sha256 "5669bc5d8ef9053ded1e6bcd19de8d1e42006e3c5a7ad8d44c4fde93a88148ac"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-amd64.tar.gz"
      sha256 "1be346ab2fc097f916e871d49587e3a99840e8b1865c09f58b87cf947a7da488"
    end
    on_arm do
      url "https://github.com/montanaflynn/headless-terminal/releases/download/v#{version}/ht-v#{version}-linux-arm64.tar.gz"
      sha256 "18af37f9f0093f8e1de589ab89b3854191cf466958de50800a4fe89a0112c47b"
    end
  end

  def install
    bin.install "ht"
  end

  test do
    assert_match "ht", shell_output("#{bin}/ht --help 2>&1")
  end
end
