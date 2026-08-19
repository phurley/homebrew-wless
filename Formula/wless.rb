class Wless < Formula
  desc "Word-wrapping, auto-following terminal pager"
  homepage "https://github.com/phurley/wless"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v#{version}/wless-v#{version}-aarch64-apple-darwin.tar.gz"
      sha256 "9e4f9574ba210ce0d4bef92f91a94602388c037b3787b6d049b1a505e961c34c"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v#{version}/wless-v#{version}-x86_64-apple-darwin.tar.gz"
      sha256 "ba48df2bf5a63459fcdaa9fefae6572d78e47f81715f6a42ec9ef7fddd8522de"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v#{version}/wless-v#{version}-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0d0a3148c28b027a160efe8cb483307363ff58831cb6c2f8e68b813ed5e0d661"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v#{version}/wless-v#{version}-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "26f7ce6a4e55a510f5f0d2bf6e422b3bb4f18da5a63e90f71240dd13a1b1543c"
    end
  end

  def install
    bin.install "wless"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wless --version")
  end
end
