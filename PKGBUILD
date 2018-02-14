pkgbase=ltsatool
pkgname=ltsatool
pkgver=3.0.0
pkgrel=4
url='http://www.doc.ic.ac.uk/~jnm/book/'
arch=('any')
pkgdesc='Tools used to formally specify and verify softwares.'
license=('custom')
depends=('java-environment')
source=("http://www.doc.ic.ac.uk/~jnm/book/ltsa/$pkgname.zip" \
        "https://www.doc.ic.ac.uk/~jnm/book/ltsa/animation.zip")
sha256sums=('9ed894c4f2ae22e119a4f48e6e3f36b38b08f8fe85a6ac85564f4c5045fe9046' \
            '7de288fca1d03c4deb6e8ef509f15a71541eede8489fb6b25c848006b258bec4')

prepare() {
    mkdir -p "${srcdir}/bin"
    mkdir -p "${srcdir}/assets"
    cp ../bin/* "${srcdir}/bin"
    cp ../assets/* "${srcdir}/assets"
    cp ../misc/ltsa.desktop "${srcdir}"
}

package() {
    cd "$srcdir"

    install -d "${pkgdir}"/{opt/${pkgname}/,usr}
    install -d "${pkgdir}"/opt/${pkgname}/{bin,lib,examples,assets,docs}
    install -d "${pkgdir}"/usr/{bin,share/applications}

    mv "${pkgname}/ltsa.jar" "${pkgdir}/opt/${pkgbase}/lib"
    mv animation/*.jar "${pkgdir}/opt/${pkgbase}/lib"
    mv "${pkgname}/ltl2buchi.jar" "${pkgdir}/opt/${pkgbase}/lib"

    mv animation/SceneAnimations "${pkgdir}/opt/${pkgbase}/examples/animations"
    mv "${pkgname}/Chapter_examples"/* "${pkgdir}/opt/${pkgbase}/examples/"

    mv animation/*.pdf "${pkgdir}/opt/${pkgbase}/docs"

    mv bin/* "${pkgdir}/opt/${pkgbase}/bin"
    mv assets/* "${pkgdir}/opt/${pkgbase}/assets"

    mv "ltsa.desktop" "${pkgdir}/usr/share/applications"
    ln -s "/opt/${pkgname}/bin/ltsa.sh" "${pkgdir}/usr/bin/ltsa"
}
