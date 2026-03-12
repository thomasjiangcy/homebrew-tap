class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.5.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.5.0/pkgrep-v0.5.0-aarch64-apple-darwin.tar.gz"
      sha256 "3f4916919542596fbe0a20dfe4cc388f7628933b3d095a5fc3957074640bf8ba"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.5.0/pkgrep-v0.5.0-x86_64-apple-darwin.tar.gz"
      sha256 "563dc21564e2a0e8d95b3c23912f9f47ebfce015dcbdf3cfaad3e732f31524e1"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.5.0/pkgrep-v0.5.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "f9cc2cd3dc76cc55869296009913b2e743af7a273ea7de865e5644237da125eb"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
