class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.3.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.1/pkgrep-v0.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "1ef1e2b0af232387c99da76b98862f7722739fe912f251d4afe8591900305b6d"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.1/pkgrep-v0.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "e99a82694c60b51c430561f7ff52763a6b1477d12b0437d1abaf8ad575558594"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.1/pkgrep-v0.3.1-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "eabd3a7abd9ec47976ec9d67c6973335317b5798a04b89322ab73959443cac38"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
