#! /bin/bash
#This for debian 12, Any release testing or stable. Sid is unstable though i wouldn't use it.
#Use openSUSE or arch if you want new packages to be honest.
echo "Updating and upgrading the system first also removing old repos..."
sudo apt update && sudo apt upgrade && apt update && apt upgrade
rm /etc/apt/sources.list
echo "setting unstable repos..."
echo "deb http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
"Echo upgrading system"
apt update && apt upgrade && sudo apt update && sudo apt upgrade
echo "Don't worry about 
echo "Have fun, Don't break it!"
echo "Make sure it's right."
cat /etc/apt/sources.list
