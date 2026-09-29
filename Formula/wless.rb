class Wless < Formula
  desc "Word-wrapping, auto-following terminal pager"
  homepage "https://github.com/phurley/wless"
  version "1.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v1.4.0/wless-v1.4.0-aarch64-apple-darwin.tar.gz"
      sha256 "1155e3d9ec6f165fb4cd9b7a7bc69d0d0cdbad1db8aa1624374437988c733248"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v1.4.0/wless-v1.4.0-x86_64-apple-darwin.tar.gz"
      sha256 "87b655ec94ff19db7e0f6f42b74e8e9ad3f39207876611d962fd83727e736461"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/phurley/wless/releases/download/v1.4.0/wless-v1.4.0-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07ca303956a6dfceeb4798e24cefc7685ace2478dc90b431172745328bd2c082"
    end
    on_intel do
      url "https://github.com/phurley/wless/releases/download/v1.4.0/wless-v1.4.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "31543ff658ea10f746813834be3bc02985dcd8c90598741a68ccc40dc1201beb"
    end
  end

  def install
    bin.install "wless"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wless --version")
  end
end
