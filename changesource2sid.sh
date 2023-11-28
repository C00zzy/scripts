#!/bin/bash
read -p "Do you want to enable sid repos y/n" answer
if [[ &answer =~ ^[yy](es)?$ ]]; then 
echo "Alright Don't blame if it breaks.."
rm /etc/apt/sources.list
echo "setting new repos"
echo "deb http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
echo "upgrading system"
apt update && apt upgrade && sudo apt update && sudo apt upgrade
elif [[ $answer =~ ^[Nn]o?$ ]]; then
echo "Good choice..."
exit
else
echo "Not a valid input!"
./changesource2sid.sh
fi

#This a test!
