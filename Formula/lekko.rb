# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.27"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.27/lekko_Darwin_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "8abedb0b80b8d7a9c7559c5d9222e3f1e38e6dc75d4247b31ce41a51c1845275"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.27/lekko_Darwin_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "cba7c3ddb1d16bb8aaa67306cb1c77fe98f07ea57216a4e9c4da7e20712d2db0"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.27/lekko_Linux_arm64.tar.gz", using: CurlDownloadStrategy
      sha256 "67df647ec2c5dc828168c82328b77e4230cb2513549c8ba07ff61f11e9d98dd1"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://lekko-cli-releases.s3.amazonaws.com/v0.3.27/lekko_Linux_x86_64.tar.gz", using: CurlDownloadStrategy
      sha256 "9fc2a30f1976c851bbdeacd8815060ff3a49c4b101dc6090b9ad623700424745"

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
