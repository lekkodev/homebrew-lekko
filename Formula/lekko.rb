# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.10"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.10/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "6d76bc3bc061449ec29336f4a7087ff64786bb4b2854b7836575b21fa1856972"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.10/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "7068aea286dfac38a072bbcc335024a72575ed45bb5a17c21b32aa8a4aba83fb"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.10/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "afc8f65aeeedccb770c48b53e5e04e9d52369e433a98beaa2182eda8627eb349"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.10/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "516fcae31047de9c486125436cb83eeee75a1ec2904e76719a545dd833ce3aef"

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
