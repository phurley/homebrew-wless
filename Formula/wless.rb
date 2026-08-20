class Wless < Formula
  desc "Word-wrapping, auto-following terminal pager"
  homepage "https://github.com/phurley/wless"
  version "1.3.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v1.3.1/wless-v1.3.1-aarch64-apple-darwin.tar.gz"
      sha256 "4376cea50a383f1406fb495b6026373e8307befaad0fb3ee3fc8cf39c35e3ce4"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v1.3.1/wless-v1.3.1-x86_64-apple-darwin.tar.gz"
      sha256 "59bb4d49d79b5da271d90051ff6b17720a2164d146fdc88fa02c35d0823428f1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v1.3.1/wless-v1.3.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4c1154354e30671091a77b350c3a29120b3a1cd46a89ec54dfbec6db6422b4c9"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v1.3.1/wless-v1.3.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7e047e81e63596246d8289a6a6734cbf4b75021668ebe4e206652b2f9c4c90a6"
    end
  end

  def install
    bin.install "wless"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wless --version")
  end
end
