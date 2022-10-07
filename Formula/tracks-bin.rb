class TracksBin < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/releases/download/v1.4.0/tracks-1.4.0.tar"
  sha256 "e190fdad8387097861f4585d5491f522cc6e01af0998fdeb48eeb99450335154"
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
