pkgname="tracks"
pkgver="1.2.3"
pkgrel=1
pkgdesc='Kotlin 编写的 B 站视频下载器 | BiliBili Video Downloader written with Kotlin'
arch=('any')
url='https://github.com/Colerar/Tracks'
license=('MIT')
depends=("java-runtime")
source=("https://github.com/Colerar/Tracks/releases/download/v${pkgver}/tracks-${pkgver}.zip")
sha256sums=('2a6c98f6759915b0a5e5e2d6d7c5df04abb849987239a62d66c5978f8eddb591')

package() {
  cd "$srcdir/$pkgname-$pkgver"
  rm bin/tracks.bat
  mkdir -p "$pkgdir/usr"
  cp -a . "$pkgdir/usr"
}
