#!/bin/sh

# For xed line count
dbus-launch dconf load / < ~/xed.dconf

# For setting calamares.desktop as trusted
for f in ~/Desktop/calamares.desktop; do chmod +x "$f"; gio set -t string "$f" metadata::xfce-exe-checksum "$(sha256sum "$f" | awk '{print $1}')"; done

# Removing script and set_once_xfce4.desktop
rm ~/xed.dconf ~/.config/autostart/set_once_xfce4.desktop ~/set_once_xfce4.sh 

