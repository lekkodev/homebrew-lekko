# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.7"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.7/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "c05f12fd7e7fff8eb8b1e208c1c5be932ffd5069b773da9a622522240ee37074"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.7/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "2541ef8a039b2e32c1e4bdc80b3b36b4617d7a18ed1369bcb8d6e741783913be"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.7/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8c2a7bfba6f9208cf6ac8d0b5bcf32e8386a9259a129c415d93b1f0ae5518179"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.7/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "3a400b13f2e1996798bc319a7ea83567dc165bb5a0c3149e016acc548b9c1b90"

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
