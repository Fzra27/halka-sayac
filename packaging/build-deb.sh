#!/bin/sh
set -eu
umask 022

cd "$(dirname "$0")/.."
version=1.0.0
output=${1:-"halka-sayac_${version}_all.deb"}
stage=$(mktemp -d)
chmod 755 "$stage"
trap 'rm -rf "$stage"' EXIT

install -Dm755 halka-sayac "$stage/usr/bin/halka-sayac"
install -Dm644 packaging/halka-sayac.desktop "$stage/usr/share/applications/halka-sayac.desktop"
install -Dm644 packaging/halka-sayac.svg "$stage/usr/share/icons/hicolor/scalable/apps/halka-sayac.svg"
mkdir "$stage/DEBIAN"
cat > "$stage/DEBIAN/control" <<CONTROL
Package: halka-sayac
Version: $version
Section: utils
Priority: optional
Architecture: all
Depends: python3, python3-tk
Maintainer: Halka Sayaç <Fzra27@users.noreply.github.com>
Description: Halkalı masaüstü geri sayım sayacı
 Türkçe arayüzlü ve dört renk seçenekli geri sayım sayacı.
CONTROL

dpkg-deb --root-owner-group --build "$stage" "$output"
