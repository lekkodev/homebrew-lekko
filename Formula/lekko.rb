# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.15"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.15/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "07038dff37f16e267c1d14699564d9cb30730d11feca33d79fcb5beea05bc36c"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.15/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "2abf8a1274960c73b64ef51ce7e00e0e1c84e120826e7bd90c6fcc083920db42"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.15/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "5bd60d509837ba4ca48306d897169607deeb65b69dbc8f1eff53fb99084320ee"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.15/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "7b4fa6fb2cd7bb2352769ad0b00cbc168a7e07386c51ba307f763d8f3132bd71"

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
