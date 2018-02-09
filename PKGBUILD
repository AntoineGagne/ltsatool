pkgbase=ltsatool
pkgname=ltsatool
pkgver=1.0.0
pkgrel=1
url='http://www.doc.ic.ac.uk/~jnm/book/'
arch=('any')
pkgdesc='Tools used to formally specify and verify softwares.'
license=('custom')
depends=('java-environment')
source=("http://www.doc.ic.ac.uk/~jnm/book/ltsa/$pkgname.zip")
sha256sums=('9ed894c4f2ae22e119a4f48e6e3f36b38b08f8fe85a6ac85564f4c5045fe9046')

prepare() {
    mkdir -p "${srcdir}/bin"
    cp ../bin/ltsa.sh "${srcdir}/bin"
}

package() {
    cd "$srcdir"

    install -d "${pkgdir}"/{opt/${pkgname}/,usr/bin}
    install -d "${pkgdir}"/opt/${pkgname}/{bin,examples,lib}

    mv "${pkgname}/ltsa.jar" "${pkgdir}/opt/${pkgbase}/bin"
    mv "${pkgname}/ltl2buchi.jar" "${pkgdir}/opt/${pkgbase}/lib"
    mv "${pkgname}/Chapter_examples"/* "${pkgdir}/opt/${pkgbase}/examples/"
    mv bin/* "${pkgdir}/opt/${pkgbase}/bin"

    ln -s "/opt/${pkgname}/bin/ltsa.sh" "${pkgdir}/usr/bin/ltsa"
}
