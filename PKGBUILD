pkgname="tracks"
pkgver="1.4.2"
pkgrel=1
pkgdesc='Kotlin 编写的 B 站视频下载器 | BiliBili Video Downloader written with Kotlin'
arch=('any')
url='https://github.com/Colerar/Tracks'
license=('MIT')
depends=("java-runtime")
source=("https://github.com/Colerar/Tracks/releases/download/v${pkgver}/tracks-${pkgver}.zip")
sha256sums=('7f9c6600ed41007920dea109f25ecfdb7937f10a0444bb42722a45ad58e72237')

package() {
  cd "$srcdir/$pkgname-$pkgver"
  mkdir -p "$pkgdir/usr"
  cp -a . "$pkgdir/usr"
}
