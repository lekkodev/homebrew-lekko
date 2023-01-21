class Lekko < Formula
  desc "A new way of working with dynamic configuration."
  homepage "https://lekko.com"
  head "https://github.com/lekkodev/cli.git", branch: "main"
  url "https://github.com/lekkodev/cli/releases/download/v0.0.1/lekko_Darwin_arm64.tar.gz", :using => GitHubPrivateRepositoryReleaseDownloadStrategy
  sha256 "3b42d00288a2cd3494b699f272dafc7f4f13d7349e2ee355377561e93d44a98c"
  version "0.0.1"

  def install
    bin.install "lekko"
  end

  test do
    system "#{bin}/lekko"
  end
end
