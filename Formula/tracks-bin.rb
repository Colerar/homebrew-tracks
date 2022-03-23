class TracksBin < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/releases/download/v1.2.2/tracks-1.2.2.tar"
  sha256 "b40716bc3133012614de64119f4f9607c515066e9a10eff85ffceba7d21b3005"
  license "MIT"
  head "https://github.com/Colerar/Tracks.git"

  depends_on "gradle" => :build
  depends_on "openjdk" => :build

  conflicts_with "tracks"

  def install
    bin.install "bin/tracks"
    lib.install Dir["lib/*.jar"]
  end

  test do
    system "tracks"
  end
end
