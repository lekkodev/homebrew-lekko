# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.21"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.21/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "2e4d0a9d8986ee9038af48557488480c79f31300692852d54c222c07290eeb47"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.21/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "fe511aa5f7ded52dfc1e59ae355e1a368c4723d46e7258d86e0fa795d20be54e"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.21/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "73380ba5ada1d6a0cd5ace60872ef3ad8d2cd6c22399839790145d11ef6cfbfb"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.21/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4c916aeeda0a6676b60c9f9242d918568d218be07248f3b19857791c0031167c"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  test do
    system "#{bin}/lekko"
    # ...
  end
end
