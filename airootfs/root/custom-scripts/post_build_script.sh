#!/bin/bash

# Path to calamares.desktop in the ISO's root
CALAMARES_DESKTOP="/etc/skel/Desktop/calamares.desktop"

# Make calamares.desktop executable
chmod +x "$CALAMARES_DESKTOP"
