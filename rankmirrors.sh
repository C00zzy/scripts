#! /bin/bash
#This ranks mirrors for pacman.
#Needs reflector.
#Run this as root or it probably won't work.
echo "installing Reflector.."
sudo pacman -S --noconfirm reflector
clear
echo "Removing old mirrorlist and making a backup of it"
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo rm /etc/pacman.d/mirrorlist
clear
echo "Ranking mirrors.."
sudo reflector --latest 5 --protocol https --sort rate --save /etc/pacman.d/mirrorlist %% echo done

