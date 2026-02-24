class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.1.0/pkgrep-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "b07826682fdb5f3882081ea6d8aa6abe3fd8323852acb3b05f198157351546bd"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.1.0/pkgrep-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "dfdda6230527c610237fea2b70b6c62243efda4b013b32908e04a4be9841e5db"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.1.0/pkgrep-v0.1.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "ae15109190f428a08f4a356cef736777ceb669d56cf30d31849e11f392fcd500"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
