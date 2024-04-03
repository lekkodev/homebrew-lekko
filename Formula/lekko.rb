# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.18"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.18/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8178db66db3178adadad2acd7ba41e630d8703288a25a849d775f4c22ddabd14"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.18/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "9245c4b2c3c351f51b054a1cbf5bd9846d6ef8b156038db69d974db5da5e983c"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.18/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f4ef90b43931d35a59a8b6b4ebf682c8deee79798ed30fe4e523e15a16910123"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.18/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "8cb2cd5ddaab1b0bccbdef8929510912cfe829d594bde555ce83da34cd782b6b"

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
