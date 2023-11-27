#! /bin/bash
#This ranks mirrors for pacman.
#Needs reflector.
#Run this as root or it probably won't work.
sudo su
echo "installing Reflector.."
sudo pacman -S --noconfirm reflector
echo "Making mirrors.."
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
sudo rm /etc/pacman.d/mirrorlist
sudo reflector --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
echo "Done!"

