#!/usr/bin/env bash

echo "Install main script"
install -m 744 "assets/unpack_bitwig_installer" \
        -T -D "$HOME/.local/bin/unpack_bitwig_installer"

echo "Install context menu item"
version="kbuildsycoca5"
if command -v kbuildsycoca6 &> /dev/null; then
    version="kio"
fi
install -m 744 "assets/unpack_bitwig_installer.desktop" \
        -T -D "$HOME/.local/share/$version/servicemenus/unpack_bitwig_installer.desktop"

echo "Install custom icon"
install -m 644 "assets/com.bitwig.BitwigStudio.2d67c86e.svg" \
        -T -D "$HOME/.local/share/icons/hicolor/scalable/apps/com.bitwig.BitwigStudio.2d67c86e.svg"
