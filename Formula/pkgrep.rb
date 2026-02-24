class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.3.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.0/pkgrep-v0.3.0-aarch64-apple-darwin.tar.gz"
      sha256 "13eaa2207b37333ee7502225f2e4300d1c9f51492de5d198e5196c4bdd836493"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.0/pkgrep-v0.3.0-x86_64-apple-darwin.tar.gz"
      sha256 "3ce48782176c91345300658d3a90bdac820321fc9e2d2bb5b93d5168d0c8f057"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.3.0/pkgrep-v0.3.0-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "560ce927d49630b6fffa7b08432fa5cfa1a1bf69cc2b38d068a5642cdae7d1c7"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
