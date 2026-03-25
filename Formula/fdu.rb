class Fdu < Formula
  desc "Fast disk usage analyzer with a streaming TUI"
  homepage "https://github.com/montanaflynn/fdu"
  url "https://github.com/montanaflynn/fdu/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bd7d4c9d42095ee0b72d7bd54dcae0224323a89735e490c13fe1accd96edee49"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fdu", shell_output("#{bin}/fdu --help")
  end
end
