class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.2.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.2.0/pkgrep-v0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "b0d415f12051dc7d4770cdc5806c012cd9609cde0d2fa1b686146344ae077b9c"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.2.0/pkgrep-v0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "1c4ca5432e851d18fc14b8e5b99c8200ec31dddfdfc58bfcae9a230f94fe33ee"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.2.0/pkgrep-v0.2.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "aec6a3cf4e368c20f490750dd3cea41c09f9c150d40f4685e76813ca20794d55"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
