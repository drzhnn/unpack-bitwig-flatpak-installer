#!/usr/bin/env bash

remove_scipt_files() {
    echo "Remove main script"
    rm -f "$HOME/.local/bin/unpack_bitwig_installer" > /dev/null

    echo "Remove KDE context menu item"
    rm -f "$HOME/.local/share/kio/servicemenus/unpack_bitwig_installer.desktop" > /dev/null
    rm -f "$HOME/.local/share/kservices5/servicemenus/unpack_bitwig_installer.desktop" > /dev/null

    echo "Remove custom icon"
    rm -f "$HOME/.local/share/icons/hicolor/scalable/apps/com.bitwig.BitwigStudio.2d67c86e.svg" > /dev/null
}

remove_scipt_files
