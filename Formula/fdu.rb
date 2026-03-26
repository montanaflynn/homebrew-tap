class Fdu < Formula
  desc "Fast disk usage analyzer with a streaming TUI"
  homepage "https://github.com/montanaflynn/fdu"
  url "https://github.com/montanaflynn/fdu/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "c8b004b3b4a841b4dd29dc9f82b6f33f6291a644e4e9aaa94e6fa72e94ac7480"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fdu", shell_output("#{bin}/fdu --help")
  end
end
