class TracksBin < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/releases/download/v1.4.1/tracks-1.4.1.tar"
  sha256 "f55e624781b73fdb6a20ef07a86e1a90df7a2ac06f0f09fd0113c7090f5f5508"
  license "MIT"
  head "https://github.com/Colerar/Tracks.git"

  conflicts_with "tracks"

  def install
    bin.install "bin/tracks"
    lib.install Dir["lib/*.jar"]
  end

  test do
    system "tracks"
  end
end
