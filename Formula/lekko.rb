# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private_strategy"
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.1.4"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lekkodev/cli/releases/download/v0.1.4/lekko_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "242c52e6dcca7275356a2c8684ffdf938262e47e5ad5a5936f8a42c6930532ba"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.1.4/lekko_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "77672d538e27f55760a8dacb0abc655ac0a90607c65b8d98a3384bfbb600beb4"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lekkodev/cli/releases/download/v0.1.4/lekko_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "f52625fc31fd430a87d668b2d53f09a90cce3821fb7adb87e448e3bbde521682"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.1.4/lekko_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "75a19969235d92d0626fae2fe3744aae7e1617b62151f69a0552cf7e521d4308"

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
