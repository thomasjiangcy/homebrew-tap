class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.7.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.2/pkgrep-v0.7.2-aarch64-apple-darwin.tar.gz"
      sha256 "12adb552a3d50aad2ad85c71fbff752afbebb8039022337e4e540b5931300c85"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.2/pkgrep-v0.7.2-x86_64-apple-darwin.tar.gz"
      sha256 "faf456b316ff04438951b245dbb0202c04b0942aad567e40486d694f978eaa0c"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.2/pkgrep-v0.7.2-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "1bdc9263fdd14a826cc38e0af74d3736a0d83d7f2e3604a4bdebab04813a2faf"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
