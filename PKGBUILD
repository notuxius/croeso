pkgname=netrunner-command-center
pkgver=1.0.2
pkgrel=1
pkgdesc="First run settings and info app for Netrunner, written in QML"
arch=('x86_64')
url="https://www.netrunner.com/"
license=('GPL')
depends=('qt5-quickcontrols2' 'qt5-webview' 'plasma-framework' 'imagemagick')
makedepends=('git')
source=("git://github.com/notuxius/netrunner-command-center.git")
md5sums=('SKIP')

build() {
    cd netrunner-command-center/
   
    /usr/bin/qmake netrunner-command-center.pro
    make
}

package() {
    cd netrunner-command-center/
   
    make INSTALL_ROOT=${pkgdir}/ install
}
