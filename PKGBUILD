pkgname="tracks"
pkgver="1.3.0"
pkgrel=1
pkgdesc='Kotlin 编写的 B 站视频下载器 | BiliBili Video Downloader written with Kotlin'
arch=('any')
url='https://github.com/Colerar/Tracks'
license=('MIT')
depends=("java-runtime")
source=("https://github.com/Colerar/Tracks/releases/download/v${pkgver}/tracks-${pkgver}.zip")
sha256sums=('9f3232b4e280dff98a5a7cd23bd1c108e7327ff49c12ca96adc08b93a78c8afc')

package() {
  cd "$srcdir/$pkgname-$pkgver"
  mkdir -p "$pkgdir/usr"
  cp -a . "$pkgdir/usr"
}
