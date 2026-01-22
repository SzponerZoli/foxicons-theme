#!/bin/bash

# Fox Icons Theme Uninstaller

if [ -z "$XDG_DATA_HOME" ]; then
    XDG_DATA_HOME="$HOME/.local/share"
fi

ICONS_DIR="$XDG_DATA_HOME/icons"
THEME_NAME="fox-icons"

if [ -d "$ICONS_DIR/$THEME_NAME" ]; then
    echo "Removing Fox Icons theme..."
    rm -rf "$ICONS_DIR/$THEME_NAME"
    if command -v gtk-update-icon-cache &> /dev/null; then
        echo "Updating icon cache..."
        gtk-update-icon-cache -f -t "$ICONS_DIR" 2>/dev/null || true
    fi
    echo "✓ Uninstall complete!"
else
    echo "Fox Icons theme not found at $ICONS_DIR/$THEME_NAME"
fi
