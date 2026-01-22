# Maintainer: Zoltan Egyhazi <szponerzoli@example.com>
pkgname=foxicons-theme
pkgver=1.0.0
pkgrel=1
pkgdesc="A collection of multi-sized icons organized as a Linux desktop icon theme"
arch=('any')
url="https://github.com/SzponerZoli/foxicons-theme"
license=('GPL3')
depends=()
source=()
sha256sums=()

build() {
    true
}

package() {
    cd "$srcdir/.."
    
    # Install icon theme
    install -dm 755 "$pkgdir/usr/share/icons/fox-icons"
    
    # Copy icon directories
    for dir in 16x16 32x32 48x48 64x64 96x96 128x128 256x256; do
        if [ -d "$dir" ]; then
            install -dm 755 "$pkgdir/usr/share/icons/fox-icons/$dir"
            install -m 644 "$dir"/*.png "$pkgdir/usr/share/icons/fox-icons/$dir/" 2>/dev/null || true
        fi
    done
    
    # Install theme metadata
    install -m 644 index.theme "$pkgdir/usr/share/icons/fox-icons/"
    
    # Install documentation
    install -dm 755 "$pkgdir/usr/share/doc/fox-icons"
    install -m 644 README.md "$pkgdir/usr/share/doc/fox-icons/"

}

post_install() {
    gtk-update-icon-cache -f -t /usr/share/icons/fox-icons
}

post_upgrade() {
    gtk-update-icon-cache -f -t /usr/share/icons/fox-icons
}

post_remove() {
    rm -rf /usr/share/icons/fox-icons
    gtk-update-icon-cache -f -t /usr/share/icons
}
