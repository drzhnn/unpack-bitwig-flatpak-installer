#!/usr/bin/env bash

if pgrep -x "bitwig-studio" >/dev/null; then
    echo "Close Bitwig Studio before running this script"
    sleep 2
    exit 0
fi

remove_unpacked_bitwig() {
    echo "Remove Bitwig Studio"
    rm -rf "$HOME/.local/opt/bitwig" > /dev/null

    echo "Remove Bitwig Studio launcher"
    rm -f "$HOME/.local/bin/bitwig-studio" > /dev/null

    echo "Remove default icons"
    rm -f "$HOME/.local/share/icons/hicolor/128x128/apps/com.bitwig.BitwigStudio.png" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/48x48/apps/com.bitwig.BitwigStudio.png" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-clip.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-device.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-extension.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-impulse.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-modulator.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-module.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-package.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-preset.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-project-folder.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-project.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-remote-controls.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.application-bitwig-template.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/mimetypes/com.bitwig.BitwigStudio.audio-x.dawproject.svg" > /dev/null
    rm -f "$HOME/.local/share/icons/hicolor/scalable/apps/com.bitwig.BitwigStudio.svg" > /dev/null

    echo "Remove default mime types package"
    rm -f "$HOME/.local/share/mime/packages/com.bitwig.BitwigStudio.xml" > /dev/null

    echo "Remove default .desktop file"
    rm -f "$HOME/.local/share/applications/com.bitwig.BitwigStudio.desktop" > /dev/null
}

update_things() {
    echo "Update cache"
    update-desktop-database "$HOME/.local/share/applications" > /dev/null
    update-mime-database "$HOME/.local/share/mime" > /dev/null
    $(command -v kbuildsycoca6 || command -v kbuildsycoca5) &> /dev/null
}

remove_unpacked_bitwig
update_things
