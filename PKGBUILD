pkgname="tracks"
pkgver="1.4.1"
pkgrel=1
pkgdesc='Kotlin 编写的 B 站视频下载器 | BiliBili Video Downloader written with Kotlin'
arch=('any')
url='https://github.com/Colerar/Tracks'
license=('MIT')
depends=("java-runtime")
source=("https://github.com/Colerar/Tracks/releases/download/v${pkgver}/tracks-${pkgver}.zip")
sha256sums=('2c102a973dca4ba54a4f9b4f08d4ba60dffef8e4c9f7e8ce55949b63cce637a4')

package() {
  cd "$srcdir/$pkgname-$pkgver"
  mkdir -p "$pkgdir/usr"
  cp -a . "$pkgdir/usr"
}
