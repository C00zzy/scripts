#! /bin/bash
#This is for pacman aliases, pacman syntax is dogshit IMO.
#Linking sudo and doas incase its using doas
#Also this installs paru! That's cool.
ln -s $(which doas) /usr/bin/sudo
echo "This is for bash btw"
echo "Installing sudo incase you don't have it"
echo "alias pacupdate='sudo pacman -Syu'" >> .bashrc
echo "alias pacinstall='sudo pcman -Syu'" >> .bashrc
echo "alias pacremove='sudo pcman -Rs'" >> .bashrc
echo "alias pacautoremove='pacman -Rdd'" >> .bashrc
echo "alias pacsearch='pacman -Qe'" >> .bashrc
#Alright This is for paru
echo "Installing paru incase it doesn't have it"
sudo pacman -S git cargo base-devel
git clone https://aur.archlinux.org/paru-git
cd paru-git
makepkg
echo "install the package with pacman -U"
echo "alias auradd='paru -S'" >> .bashrc
echo "alias aurremove='paru -Rs'" >> .bashrc
echo "alias aursearch='paru -Ss'" >> .bashrc
#END
