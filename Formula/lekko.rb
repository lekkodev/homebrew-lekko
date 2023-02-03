# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../lib/private_strategy"
class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com/"
  version "0.2.0"
  license "Apache-2.0"

  depends_on "buf"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.0/lekko_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "90060f17e9b5af20271026d62c7c5ba14117062a43721e73e29591ea430ae22c"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.0/lekko_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "acb7b776e755042c635b0894009423b5e7b7b61d712526d8f2ba3ebf187bd68c"

      def install
        bin.install "lekko"
        # ...
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.0/lekko_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "1735a53d2acfa30a1b23c406e69fe87b6dabf962a252bb1eef031131a84881e8"

      def install
        bin.install "lekko"
        # ...
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/lekkodev/cli/releases/download/v0.2.0/lekko_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "505180a25ba65f8061d20b264b32cadc9d6c17a50ee9d725c14c93ff7a0d8f24"

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
