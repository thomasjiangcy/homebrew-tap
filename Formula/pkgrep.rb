class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.4.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.4.0/pkgrep-v0.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "59fcb43429e73ced33b76229738319a5fd07f598b704d219f3b8bdcb20daded3"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.4.0/pkgrep-v0.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "a67a98300af03cbbab4ad89c8954d7eff9ece86c403feb1ab96e7c9c90643aec"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.4.0/pkgrep-v0.4.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "afc8141ba452a5ae8d86951904b3bd6fbb68739c4d491909571db69303cce12f"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
