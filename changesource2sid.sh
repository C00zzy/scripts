# /bin/bash
#This for debian 12, Any release testing or stable. Sid is kinda pointless though i wouldn't use it.
#Use openSUSE or arch if you want new packages to be honest.
echo "Updating and upgrading the system first also removing old repos..."
apt update && apt upgrade
rm /etc/apt/sources.list
echo "setting unstable repos..."
echo "deb http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
Echo "upgrading system"
apt update && apt upgrade
clear
echo "Have fun, Don't break it!"

