class Cctop < Formula
  desc "TUI for monitoring Claude Code sessions"
  homepage "https://github.com/montanaflynn/cctop"
  url "https://github.com/montanaflynn/cctop/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "882c5d0cdf9efc8913f39934061c757b3e1f1659a9aab966ae6f5ef3c6369f3a"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "cctop", shell_output("#{bin}/cctop 2>&1", 1)
  end
end
