pkgname="tracks"
pkgver="1.2.3"
pkgrel=1
pkgdesc='Kotlin 编写的 B 站视频下载器 | BiliBili Video Downloader written with Kotlin'
arch=('any')
url='https://github.com/Colerar/Tracks'
license=('MIT')
depends=("java-runtime")
source=("https://github.com/Colerar/Tracks/releases/download/v${pkgver}/tracks-${pkgver}.zip")
sha256sums=('37bde0709b56b99497c3b57a0e89a78df97d2b4db4a56cd80a839943dd1739a6')

package() {
  cd "$srcdir/${_tarballname}"
  install -dm 755 "${pkgdir}/"
  cp -a . "${pkgdir}/"
}