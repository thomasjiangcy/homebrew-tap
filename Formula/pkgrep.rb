class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.2.0/pkgrep-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "a8ace00cc5c5e834638f312a25b58186926040e6e89a887b8511fc349a9fc725"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.2.0/pkgrep-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "761c5056bd0832e7f557f6a3d2519ad129267071dc181e44e69a06406639fb02"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.2.0/pkgrep-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "de1f9756fc72f3f733c9d5ab51d37552a6dc4dd25aee9ddb28821dfadfb1d6df"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
