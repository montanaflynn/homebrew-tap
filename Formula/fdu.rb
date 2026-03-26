class Fdu < Formula
  desc "Fast disk usage analyzer with a streaming TUI"
  homepage "https://github.com/montanaflynn/fdu"
  url "https://github.com/montanaflynn/fdu/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "07e529cc48ec8d3641ee1bc5f85ecd69e59ddba11d74d544aff44c663e7f043f"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fdu", shell_output("#{bin}/fdu --help")
  end
end
