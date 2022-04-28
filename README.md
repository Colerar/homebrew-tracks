# homebrew-tracks
Homebrew Tracks Tap

**安裝**

```bash
brew tap Colerar/homebrew-tracks
brew install Colerar/tracks/tracks
# 或使用 tracks-bin, tracks-bin 安装比 tracks 快
brew install Colerar/tracks/tracks-bin
```

**makepkg**

```bash
mkdir tracks && cd tracks
wget https://raw.githubusercontent.com/Colerar/homebrew-tracks/main/PKGBUILD
makepkg && pacman -U tracks-*.pkg.*
```
