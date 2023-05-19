# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.2.27"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.27/lekko_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "6c473b1b263e1ade278027a334631b98e9ad52879cc1107e3588ae994b055fe0"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.27/lekko_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "19b3e43ca32146c0c6a5c170a548dc12a302fb6fbd5b841770d7de7810fb9f65"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.27/lekko_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "48fcc883eee0ef8783f6c0572d2af38d1441d129255897be3197dfbccbc033fb"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.27/lekko_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "c45233e889001df770b22fe831ef3513ccb93f5d5b2a213b133dfea12a1ba0e0"

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
