class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.0/pkgrep-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "774c27ef2ef41ccfd023ab57e4f563a73a000fbce5ba6fd2e576ace278de4ba6"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.0/pkgrep-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "dc1b483b263799d0dc9a8ba6c2ba17e3d7d34a9f7fd4fb747acfd4c74f6f06c2"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.0/pkgrep-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "02fbd8748abe74502f3e7fac994cc42ac8b43f54a46e0941fe9ab00944a536fa"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
