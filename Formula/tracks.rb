class Tracks < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "5e77f1813a2b3a2457cfd181054fcca2544e59a3fe5518db04a67a937909b1cd"
  license "MIT"
  head "https://github.com/Colerar/Tracks.git"

  depends_on "gradle" => :build
  depends_on "openjdk" => :build

  conflicts_with "tracks-bin"

  def install
    system "./gradlew", ":installDist"
    system "chmod", "+x", "./build/install/tracks/bin/tracks"
    bin.install "build/install/tracks/bin/tracks"
    lib.install Dir["build/install/tracks/lib/*.jar"]
    bash_completion.install "completions/tracks"
    fish_completion.install "completions/tracks.fish"
    zsh_completion.install "completions/_tracks"
  end

  test do
    system "tracks"
  end
end
