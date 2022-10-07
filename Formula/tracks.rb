class Tracks < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/archive/refs/tags/v1.4.0.tar.gz"
  sha256 "f2d3862bbb8f7b7c417dc31bef22c681a6058eefb7495d5c4c731f70fe95c554"
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
