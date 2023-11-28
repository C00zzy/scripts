#! /bin/bash
#This for debian 12, Any release testing or stable. Sid is unstable though i wouldn't use it.
echo "Updating and upgrading the system first"
  sudo apt update && sudo apt upgrade && apt update && apt upgrade
echo "Removing old repos"
rm /etc/apt/sources.list
echo "setting new repos"
echo "deb http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
echo "deb-src http://deb.debian.org/debian/ unstable main contrib non-free" >> /etc/apt/sources.list
"Echo upgrading system"
apt update && apt upgrade && sudo apt update && sudo apt upgrade
#END
