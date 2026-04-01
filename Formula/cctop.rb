class Cctop < Formula
  desc "TUI for monitoring Claude Code sessions"
  homepage "https://github.com/montanaflynn/cctop"
  url "https://github.com/montanaflynn/cctop/archive/refs/tags/v0.1.7.tar.gz"
  sha256 "723ce78d221e096f47c9334ee539ec2e344050bb49c4065dd8c049676d58a26e"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "cctop", shell_output("#{bin}/cctop 2>&1", 1)
  end
end
