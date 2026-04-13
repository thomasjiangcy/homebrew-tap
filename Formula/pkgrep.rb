class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.6.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.6.0/pkgrep-v0.6.0-aarch64-apple-darwin.tar.gz"
      sha256 "df857960cee96ff6d112f7ff7746c50e184173469fc5a67f3fc2f74301380749"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.6.0/pkgrep-v0.6.0-x86_64-apple-darwin.tar.gz"
      sha256 "0f2a793cab7c639d7d288af4ce73be3b7676ede09806deb71214b8c6025c4132"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.6.0/pkgrep-v0.6.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "75b792aa23ae19c5d79caf6d176f8a68ed2e1585799d68d24b235b12df9d31a1"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
