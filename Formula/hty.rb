class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/montanaflynn/hty"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "41770994d99e704c027bf02afb6423f2b94157d082fb16ea3a318393000e3f9f"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "83c15c9488b886b7d041787062d93f1058ed0ced6d37094f7df83af08fac963c"
    end
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "f7810e1af6afb8b46e7b1526fa7a8daf3668e970beaaa491faee6227e34ec924"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
