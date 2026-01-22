# Fox Icons - Linux Icon Theme

A collection of ugly icons from 2h foxcomm

## Contents

- **256x256, 128x128, 96x96, 64x64, 48x48, 32x32, 24x24, 16x16** - Icon sizes for different contexts
- **index.theme** - Theme metadata file
- **install.sh** - Installation script
- **uninstall.sh** - Uninstallation script

## Installation

### Method 1: AUR (Arch User Repository)
```bash
yay -S foxicons-theme
```

Or with other AUR helpers:
```bash
paru -S foxicons-theme
```

### Method 2: Using the install script
```bash
cd foxicons-theme
chmod +x install.sh
./install.sh
```

### Method 3: Manual installation
```bash
mkdir -p ~/.local/share/icons
cp -r foxicons-theme ~/.local/share/icons/fox-icons
gtk-update-icon-cache -f -t ~/.local/share/icons/fox-icons
```

### Method 4: System-wide installation (requires sudo)
```bash
sudo cp -r foxicons-theme /usr/share/icons/fox-icons
sudo gtk-update-icon-cache -f -t /usr/share/icons/fox-icons
```

## Desktop Integration

### GNOME
Tweaks → Appearance → Icons → Fox Icons

### KDE Plasma
System Settings → Appearance → Icons → Fox Icons

### XFCE
Settings → Appearance → Icons → Fox Icons

### Other Desktops
Edit `~/.config/gtk-3.0/settings.ini`:
```ini
[Settings]
gtk-icon-theme-name=fox-icons
```

Or set environment variable:
```bash
export GTK_ICON_THEME=fox-icons
```

## Uninstallation

```bash
cd foxicons-theme
chmod +x uninstall.sh
./uninstall.sh
```

Or manually:
```bash
rm -rf ~/.local/share/icons/fox-icons
```

## Icon Sizes

The theme includes icons at the following sizes:
- 16×16 - Menus and toolbars
- 24×24 - Small icons
- 32×32 - Standard icons
- 48×48 - Large icons
- 64×64 - Very large icons
- 96×96 - Extra large icons
- 128×128 - Thumbnail size
- 256×256 - High-quality preview

## License
Please refer to the original source for licensing information.
