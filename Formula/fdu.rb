class Fdu < Formula
  desc "Fast disk usage analyzer with a streaming TUI"
  homepage "https://github.com/montanaflynn/fdu"
  url "https://github.com/montanaflynn/fdu/archive/refs/tags/v0.2.0.tar.gz"
  sha256 "2951662a1fdd18fbdc1c96de8462d5f2a834ced910635706946644763f5cdeef"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fdu", shell_output("#{bin}/fdu --help")
  end
end
