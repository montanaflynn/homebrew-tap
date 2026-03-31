class Cctop < Formula
  desc "TUI for monitoring Claude Code sessions"
  homepage "https://github.com/montanaflynn/cctop"
  url "https://github.com/montanaflynn/cctop/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "8418bbd02c8e034fe91a88b2e9c01af20bc3cf79283d1d2a088bf362d18ee888"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "cctop", shell_output("#{bin}/cctop 2>&1", 1)
  end
end
