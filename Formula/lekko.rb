# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.17"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.17/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "2d0c3008c7a81f17512470fb9673507303d2718e839ee4eb0c7050f51f2a80cc"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.17/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "908e8a3d08d32ca6a596008c9aa375454fd3a9cb9c0d531c32f70ed6303aecfb"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.17/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "421d087103d2f63ec80196bca9f149f97f2f5864e56c93f7a68c25fa34758f39"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.17/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "859e17b18d9a2e2a5e9fafa9fe4519030d7a25f66f9526abcdc52f8d4be00bad"

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
