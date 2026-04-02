class Cctop < Formula
  desc "TUI for monitoring Claude Code sessions"
  homepage "https://github.com/montanaflynn/cctop"
  url "https://github.com/montanaflynn/cctop/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "6b4c1efb5768b276826396e4d99ae973e17e111d6f1c18436ee23dd9472c2e27"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w")
  end

  test do
    assert_match "cctop", shell_output("#{bin}/cctop 2>&1", 1)
  end
end
