echo "Downloading tcet-linux-keyring "
wget https://github.com/tcet-opensource/tcet-linux-applications/raw/main/x86_64/tcet-linux-keyring-23.10-5-x86_64.pkg.tar.zst
sudo pacman -U tcet-linux-keyring*

echo "Installing archsio"
sudo pacman -S archiso

echo "Building Iso"
echo "Warning don't press ctrl+c or ctrl+z when iso is building"
sudo mkarchiso -v .

echo "Do you want to remove tcet-linux-keyring from your system"
read answer

if [ "$answer" == "y" ] || [ "$answer" == "yes" ]; then
	echo "Removing tcet-linux-keyring."
	sudo pacman -R tcet-linux-keyring
elif [ "$answer" == "n" ] || [ "$answer" == "no" ]; then
	echo "tcet-linux-keyring present in your system."
	exit 0
else
	echo "Invalid input. Please enter 'y' or 'n'."
	exit 1
fi
