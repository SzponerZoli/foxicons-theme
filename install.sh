#!/bin/bash

# Fox Icons Theme Installer for Linux
# This script installs the Fox Icons theme to your system

set -e

# Determine icon theme directory
if [ -z "$XDG_DATA_HOME" ]; then
    XDG_DATA_HOME="$HOME/.local/share"
fi

ICONS_DIR="$XDG_DATA_HOME/icons"
THEME_NAME="fox-icons"
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
SOURCE_THEME="$SCRIPT_DIR"

# Create icons directory if it doesn't exist
mkdir -p "$ICONS_DIR"

echo "Installing Fox Icons theme..."
echo "Source: $SOURCE_THEME"
echo "Destination: $ICONS_DIR/$THEME_NAME"

# Copy theme
if [ -d "$ICONS_DIR/$THEME_NAME" ]; then
    echo "Removing existing theme..."
    rm -rf "$ICONS_DIR/$THEME_NAME"
fi

cp -r "$SOURCE_THEME" "$ICONS_DIR/$THEME_NAME"

# Update icon cache if available
if command -v gtk-update-icon-cache &> /dev/null; then
    echo "Updating icon cache..."
    gtk-update-icon-cache -f -t "$ICONS_DIR/$THEME_NAME" 2>/dev/null || true
fi

echo "✓ Installation complete!"
echo ""
echo "To use this theme:"
echo "1. GNOME: Open Settings → Appearance → Icons → Fox Icons"
echo "2. KDE Plasma: System Settings → Appearance → Icons → Fox Icons"
echo "3. XFCE: Settings → Appearance → Icons → Fox Icons"
echo "4. Other desktops: Set GTK_ICON_THEME environment variable"
echo ""
echo "Or manually in ~/.config/gtk-3.0/settings.ini:"
echo "  gtk-icon-theme-name=fox-icons"
