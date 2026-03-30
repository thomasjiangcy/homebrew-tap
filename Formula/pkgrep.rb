class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.5.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.5.1/pkgrep-v0.5.1-aarch64-apple-darwin.tar.gz"
      sha256 "276b73f47739e658f0d3236ec0b472654e6778253e69b5b78261a3da21788c67"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.5.1/pkgrep-v0.5.1-x86_64-apple-darwin.tar.gz"
      sha256 "7f3f65f747068f3311ec032a4df4094b39253a236b92e272b04aa91b25f86e4d"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.5.1/pkgrep-v0.5.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "2af39e3c1f73b5c1538e12cb7e2cc9fc54509b381c0eb95623e5ad6741b4c2d5"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
