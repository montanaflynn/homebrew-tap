class Fdu < Formula
  desc "Fast disk usage analyzer with a streaming TUI"
  homepage "https://github.com/montanaflynn/fdu"
  url "https://github.com/montanaflynn/fdu/archive/refs/tags/v0.5.0.tar.gz"
  sha256 "462ccd8c5c729bc4031c30648996fa70205c489233741cf04b8235997a93bf97"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "fdu", shell_output("#{bin}/fdu --help")
  end
end
