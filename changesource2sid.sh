#!/bin/bash

# Prompt the user with a yes/no question
read -p "Do you want to set up sid repos? (y/n): " answer

# Check the user's response
if [[ "$answer" == [Yy]* ]]; then
    echo "Updating and upgrading the system first, also removing old repos..."
    sudo apt update && sudo apt upgrade && apt update && apt upgrade
    rm /etc/apt/sources.list

    echo "Setting up unstable repos..."
    echo "deb http://deb.debian.org/debian/ unstable main contrib non-free" | sudo tee -a /etc/apt/sources.list >/dev/null
    echo "deb-src http://deb.debian.org/debian/ unstable main contrib non-free" | sudo tee -a /etc/apt/sources.list >/dev/null

    echo "Upgrading system..."
    apt update && apt upgrade && sudo apt update && sudo apt upgrade

    echo "Have fun, but be cautious! Make sure it's right."
    cat /etc/apt/sources.list
else
    echo "Skipping the setup of unstable repositories. Exiting."
fi
