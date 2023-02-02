class TracksBin < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/releases/download/v1.4.2/tracks-1.4.2.tar"
  sha256 "7f9c6600ed41007920dea109f25ecfdb7937f10a0444bb42722a45ad58e72237"
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
