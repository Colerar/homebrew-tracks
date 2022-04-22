class TracksBin < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/releases/download/v1.2.3/tracks-1.2.3.tar"
  sha256 "37bde0709b56b99497c3b57a0e89a78df97d2b4db4a56cd80a839943dd1739a6"
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
