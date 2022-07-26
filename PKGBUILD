pkgname="tracks"
pkgver="1.3.0"
pkgrel=1
pkgdesc='Kotlin 编写的 B 站视频下载器 | BiliBili Video Downloader written with Kotlin'
arch=('any')
url='https://github.com/Colerar/Tracks'
license=('MIT')
depends=("java-runtime")
source=("https://github.com/Colerar/Tracks/releases/download/v${pkgver}/tracks-${pkgver}.zip")
sha256sums=('SKIP')

package() {
  cd "$srcdir/$pkgname-$pkgver"
  mkdir -p "$pkgdir/usr"
  cp -a . "$pkgdir/usr"
}
