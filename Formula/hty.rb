class Hty < Formula
  desc "Interactive terminal automation for AI agents"
  homepage "https://github.com/montanaflynn/hty"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-macos.tar.gz"
      sha256 "991b17da24112a6a72373a0e0cfd525d6c0de5d285c83d9d8c058382d0eb16ef"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-x86_64-linux.tar.gz"
      sha256 "9d35e36be1ec8a473df0bdc269cd5e8fad80d70338fe361086c458409464e15d"
    end
    on_arm do
      url "https://github.com/montanaflynn/hty/releases/download/v#{version}/hty-aarch64-linux.tar.gz"
      sha256 "81d3ad196491fe8ffd0f51d962248e152495caba232d0d6ce82cf04fc7c37ebf"
    end
  end

  def install
    bin.install "hty"
  end

  test do
    assert_match "Usage", shell_output("#{bin}/hty --help")
  end
end
