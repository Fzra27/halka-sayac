# Halka Sayaç

Türkçe masaüstü geri sayım sayacı. Turuncu, kırmızı, yeşil ve mavi renklerden birini seçebilirsin. Kalan süre halkada görünür. Sayaç duraklatılabilir, devam ettirilebilir ve sıfırlanabilir. Süre dolduğunda uygulama sistem zilini çalar.

## Ubuntu

[.deb paketini indir](https://github.com/Fzra27/halka-sayac/releases/latest) ve paket yükleyiciyle aç. Terminalden kurmak için dosyayı indirdiğin dizinde şu komutu çalıştır:

```bash
sudo apt install ./halka-sayac_1.0.0_all.deb
```

Kurulumdan sonra uygulama menüsünden **Halka Sayaç**’ı aç.

## Omarchy

```bash
sudo pacman -S --needed git python tk xorg-xwayland
git clone https://github.com/Fzra27/halka-sayac.git
cd halka-sayac
install -Dm755 halka-sayac ~/.local/bin/halka-sayac
install -Dm644 packaging/halka-sayac.desktop ~/.local/share/applications/halka-sayac.desktop
install -Dm644 packaging/halka-sayac.svg ~/.local/share/icons/hicolor/scalable/apps/halka-sayac.svg
```

Uygulama menüsünden **Halka Sayaç**’ı aç veya terminalde `~/.local/bin/halka-sayac` komutunu çalıştır. Tk, Omarchy’de XWayland kullanır.
