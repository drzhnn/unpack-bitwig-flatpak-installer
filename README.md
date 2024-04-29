A little script to simplify installing Bitwig Studio in user-space on Fedora KDE.

Officially, Bitwig Studio for Linux is only available in `.deb` and `.flatpak` formats. The `.deb` installer is aimed at Ubuntu/Debian users. The `.flatpak` version, while globally adaptable, has its drawbacks (for example, it doesn't support plugins installed via [yabridge](https://github.com/robbert-vdh/yabridge)). There's no official `.rpm` build for Fedora.

![Screenshot][/screenshots/context_menu.avif]

## What's what

- `install_assets.sh` installs the main script, a custom Bitwig Studio icon, and adds two new commands to KDE context menu for `*.flatpak` files  
- `uninstall_assets.sh` reverses what `install_assets.sh` has done  
- `uninstall_bitwig.sh` removes unpacked Bitwig Studio files

## Requirements

- Fedora KDE 39 or higher
- `dolphin` - a file manager (comes preinstalled with Fedora KDE)
- `ostree` - a package for working with flatpak files

## Installation

1. Install `ostree` package: `sudo dnf install ostree`  
2. Download Bitwig Studio flatpak installer from [your Bitwig account](https://www.bitwig.com/account-profile/)  
3. Download the contents of this repository either manually or by using git: `git clone unpack-bitwig-flatpak-installer`  
4. Run `install_assets.sh` script  

## Usage

1. In Dolphin file manager, right click on the downloaded Bitwig Studio flatpak installer and select "Unpack and install Bitwig Studio"  
2. Enter your root password (it is required by the `ostree` command)  
3. Wait for the unpacking to finish  

Now you should be able to find and run Bitwig Studio from Application Launcher and pin it to your Task Manager panel. 
