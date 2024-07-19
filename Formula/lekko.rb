# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.4.2"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.4.2/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "ee468de279382cb66c4cc1be7c0cb29d0d697c8665a9d870340ecbc136525111"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.4.2/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "c09f1af6852ca7b1cd630604bd58d0d1c31dcc686c34ab674d56642f9eb08f7e"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.4.2/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "03af3ef49060c87504629f09df9798c33fff07ae13dd620f106f512825cf4b26"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.4.2/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "5f8ee171940294d63a055ad8fe202066921cbe1fd8862d696e199512741876a8"

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
