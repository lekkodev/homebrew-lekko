# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/custom_download_strategy"
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.3.4"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lekkodev/cli/releases/download/v0.3.4/lekko_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "27240f370a1a6cb298f061d1c96f6b53ce3a46705e1a158427ff615e31870792"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.3.4/lekko_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "e2f76390a9c9eb42383fbfaedf2c1e20ab003283c84464a9713ebbedd7f21957"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lekkodev/cli/releases/download/v0.3.4/lekko_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "807ea7051bc7922f8e22ac8cc91957a5d2f57961e7277c0106a0b9d95aaf70a6"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.3.4/lekko_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "69500c8f81ef5bc9aec3ff1f24e5fbcc9d42bf47ea858feb75fad586aaabaeae"

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
