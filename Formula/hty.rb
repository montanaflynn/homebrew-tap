class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/montanaflynn/hty"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "dff377f50861440fa259989391b5fd0935019e0f509fa74abe6ebc53cf3e3b9c"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "5173141bf139c52a0c65120d23f0b1986140acdc5c04bfbe5fde1c79ef424926"
    end
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "65bebd05406a19990d305231a2651bab998f2075b320fcd5f4657aee29239a1e"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
