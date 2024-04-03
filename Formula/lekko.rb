# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.19"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.19/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "f5ef036df16882eecb9bf4dfb5dd94d34959229c18b3c184f3a9bdfd6ee1a730"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.19/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "f52414832a50345359d1e42ecbf97dae199230ef2e09dfcb7ecd84153e6ea8fc"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.19/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "314d09997644a8686e10d6ef3b9286dea9eddbef8ba848db91a40e75b270486b"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.19/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "7c685f686b93edf4dc95c6f8c445c2713af78dc7d4dcda44886b9e326f37eef9"

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
