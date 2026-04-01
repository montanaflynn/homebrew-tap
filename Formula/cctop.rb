class Cctop < Formula
  desc "TUI for monitoring Claude Code sessions"
  homepage "https://github.com/montanaflynn/cctop"
  url "https://github.com/montanaflynn/cctop/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "58bb55b735f812340a398917766a735f538871be5a090eeaac5d98bfc39164ca"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "cctop", shell_output("#{bin}/cctop 2>&1", 1)
  end
end
