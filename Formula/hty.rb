class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/montanaflynn/hty"
  version "null"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
