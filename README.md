# Halka Sayaç

Türkçe masaüstü geri sayım sayacı. Turuncu, kırmızı, yeşil ve mavi renklerden birini seçebilirsin. Kalan süre halkada görünür. Sayaç duraklatılabilir, devam ettirilebilir ve sıfırlanabilir. Süre dolduğunda uygulama masaüstü bildirimi gösterir ve üç tonlu alarm çalar.

## Ubuntu

[.deb paketini indir](https://github.com/Fzra27/halka-sayac/releases/latest) ve paket yükleyiciyle aç. Terminalden kurmak için dosyayı indirdiğin dizinde şu komutu çalıştır:

```bash
sudo apt install ./halka-sayac_1.3.0_all.deb
```

Kurulumdan sonra uygulama menüsünden **Halka Sayaç**’ı aç.
 Tam ekrana geçmek için **Tam ekran** düğmesini veya **F11** tuşunu kullan. Çıkmak için **Esc** tuşuna bas.
Uygulama odaktayken **Space** ile sayacı başlat, duraklat veya devam ettir.
Sayaç hazırken **↑** ile dakikayı artır, **↓** ile azalt. Her basış bir dakika değiştirir.

## Omarchy

```bash
sudo pacman -S --needed git python tk xorg-xwayland ttf-lato libnotify libpulse
git clone https://github.com/Fzra27/halka-sayac.git
cd halka-sayac
install -Dm755 halka-sayac ~/.local/bin/halka-sayac
install -Dm644 packaging/alarm.wav ~/.local/share/halka-sayac/alarm.wav
install -Dm644 packaging/halka-sayac.desktop ~/.local/share/applications/halka-sayac.desktop
install -Dm644 packaging/halka-sayac.svg ~/.local/share/icons/hicolor/scalable/apps/halka-sayac.svg
```

Uygulama menüsünden **Halka Sayaç**’ı aç veya terminalde `~/.local/bin/halka-sayac` komutunu çalıştır. Tk, Omarchy’de XWayland kullanır.
