class Wless < Formula
  desc "Word-wrapping, auto-following terminal pager"
  homepage "https://github.com/phurley/wless"
  version "1.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v1.4.1/wless-v1.4.1-aarch64-apple-darwin.tar.gz"
      sha256 "f7d7692912b326abcf9cd548037c585dc231e46b86a430d57be356b49877722e"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v1.4.1/wless-v1.4.1-x86_64-apple-darwin.tar.gz"
      sha256 "c82ac05530e701730c878343ec102ba2ddaaf4443e3a657de269a4d40b5b4487"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v1.4.1/wless-v1.4.1-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "180bec6fa9e750c9fe872918688dc18a529bf272b5ec8b474e09f7195033488c"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v1.4.1/wless-v1.4.1-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1fec834b1ee567a628769b433ad3579d92d92ef36eae072b5200f1ecc82b278d"
    end
  end

  def install
    bin.install "wless"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wless --version")
  end
end
