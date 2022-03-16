class Tracks < Formula
  desc "Bilibili Video Downloader Written with Kotlin"
  homepage "https://github.com/Colerar/Tracks"
  url "https://github.com/Colerar/Tracks/archive/refs/tags/v1.2.1.tar.gz"
  sha256 "56ecf94b67096a29ddfff378094dff04044546ab7a2e259c6bdb25adbeade3f2"
  license "MIT"
  head "https://github.com/Colerar/Tracks.git"

  depends_on "gradle" => :build
  depends_on "openjdk" => :build

  def install
    system "./gradlew", ":installDist"
    bin.install "build/install/tracks/bin/tracks"
    lib.install Dir["build/install/tracks/lib/*.jar"]
    system "tracks", "-g", "bash", ">", "tracks.bash"
    system "tracks", "-g", "zsh", ">", "tracks.zsh"
    system "tracks", "-g", "fish", ">", "tracks.fish"
    bash_completion.install "tracks.bash" => "tracks"
    fish_completion.install "tracks.fish"
    zsh_completion.install "tracks.zsh" => "_tracks"
  end

  test do
    system "tracks"
  end
end
