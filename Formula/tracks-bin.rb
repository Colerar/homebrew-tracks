class TracksBin < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/releases/download/v1.3.0/tracks-1.3.0.tar"
  sha256 "a138b2678365b3f653d9e2c424e6a28002ab07561a9cb12b699899ddaf52f00b"
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
