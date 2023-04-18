#!/bin/bash
#set -e
#=================================================================================
#Author: DemonKiller
#SPDX-License-Identifier: GPL-3.0
#Warning! DO NOT RUN THIS SCRIPT BLINDLY. MAKE CHANGES ACCORDING TO YOUR WORKFLOW.
#RUN AT YOUR OWN RISK.
#=================================================================================


cd airootfs/etc/systemd/system/
tput setaf 2
echo "Enabling SDDM and Graphical Target.."
tput sgr0
ln -sv /usr/lib/systemd/system/graphical.target default.target

ln -sv /usr/lib/systemd/system/lightdm.service display-manager.service

tput setaf 2
echo "Enabling Network Manager..."
tput sgr0
ln -sv /usr/lib/systemd/system/NetworkManager.service multi-user.target.wants/NetworkManager.service

ln -sv /usr/lib/systemd/system/NetworkManager-wait-online.service network-online.target.wants/NetworkManager-wait-online.service

ln -sv /usr/lib/systemd/system/NetworkManager-dispatcher.service dbus-org.freedesktop.nm-dispatcher.service

tput setaf 2
echo "Enabling Printing Services..."
tput sgr0

mkdir printer.target.wants
ln -sv /usr/lib/systemd/system/cups.service printer.target.wants/cups.service

ln -sv /usr/lib/systemd/system/cups.socket sockets.target.wants/cups.socket

ln -sv /usr/lib/systemd/system/cups.path multi-user.target.wants/cups.path

tput setaf 2
echo "Enabling Bluetooth..."
tput sgr0

ln -sv /usr/lib/systemd/system/bluetooth.service dbus-org.bluez.service

mkdir bluetooth.target.wants
ln -sv /usr/lib/systemd/system/bluetooth.service bluetooth.target.wants/bluetooth.service
