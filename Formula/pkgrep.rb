class Pkgrep < Formula
  desc "Dependency source cache helper for developers and coding agents"
  homepage "https://github.com/thomasjiangcy/pkgrep"
  version "0.7.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.3/pkgrep-v0.7.3-aarch64-apple-darwin.tar.gz"
      sha256 "d85ebdac9039fb22a41b9156c895a766a52f8adfac75cc558015037f8272c051"
    else
      url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.3/pkgrep-v0.7.3-x86_64-apple-darwin.tar.gz"
      sha256 "d9ba45b2adc8d575e823778025fc052df736ec9a63cf5ca3997a975a9f602d29"
    end
  end

  on_linux do
    url "https://github.com/thomasjiangcy/pkgrep/releases/download/v0.7.3/pkgrep-v0.7.3-x86_64-unknown-linux-gnu.tar.gz"
    sha256 "a4fc7277d10d9becc81f77cfea9a2891c7efa0517f3a58aa735373771fa19e14"
  end

  def install
    bin.install "pkgrep"
  end

  test do
    assert_match "pkgrep", shell_output("#{bin}/pkgrep --help")
  end
end
