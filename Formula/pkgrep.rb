class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.7.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.1/pkgrep-v0.7.1-aarch64-apple-darwin.tar.gz"
      sha256 "f24737a6874f341513db5a6f33207e2027f48120f7b00a4218d122727ab27f67"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.1/pkgrep-v0.7.1-x86_64-apple-darwin.tar.gz"
      sha256 "9da5014c105e68c04473e810e6e7c57dec7e5a5cdb0084ee526d73d7eddbb98f"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.1/pkgrep-v0.7.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "55360730b000c5e01c8064928e256428c9f908ff28b3ae365f97cdd27b08a8a5"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
