class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.7.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.0/pkgrep-v0.7.0-aarch64-apple-darwin.tar.gz"
      sha256 "4eeb603e6e58975a6bb36d420f6b1d7aa2c0d611cdbe775572b6881a452d83f8"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.0/pkgrep-v0.7.0-x86_64-apple-darwin.tar.gz"
      sha256 "7fa78ce8590bd0fb38a4a3203a6c43156ff3619f42fe9425bdfb3157190b1ba4"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.0/pkgrep-v0.7.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "286c073e0f0aa740c8b7605033249207f1281bf4bf0628b83b62fb8bdd48cee3"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
