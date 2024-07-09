# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.34"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.34/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "94e5e350d87859e0f18bc95fd54793ca8db422e8b450667c5a7cf8703c652624"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.34/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "4dcfafbb8a82fe4f93f81a33c3fcba03934164fc5498da76329e72059ca5aeaf"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.34/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "c6e244649ff77c7e208e05c00746ba0d580179ef00c26c3eae6d40e46f26a0ec"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.34/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "633e7c67f72dbd5bc57589bfd91bfb5a15b2709ea35558f5d92dc90b4cd8af81"

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
