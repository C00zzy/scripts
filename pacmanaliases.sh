#! /bin/sh
#This is for pacman aliases, pacman syntax is dogshit IMO.
#Linking sudo and doas incase its using doas
#Also this installs paru! That's cool.
ln -s $(which doas) /usr/bin/sudo
sudo pacman -S doas
echo "alias pacupdate='sudo pacman -Syu'" >> .bashrc
echo "alias pacinstall='sudo pcman -Syu'" >> .bashrc
echo "alias pacremove='sudo pcman -Rs'" >> .bashrc
echo "alias pacautoremove='pacman -Rdd'" >> .bashrc
echo "alias pacsearch='pacman -Qe'" >> .bashrc
echo "Installing paru incase it doesn't have it"
echo "alias auradd='paru -S'" >> .bashrc
echo "alias aurremove='paru -Rs'" >> .bashrc
echo "alias aursearch='paru -Ss'" >> .bashrc
#END
