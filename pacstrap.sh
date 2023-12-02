#! /bin/sh
pacstrap -K /mnt base opendoas linux-lts linux-firmware amd-ucode neovim networkmanager bluez blueman bluez-utils brightneessctl btop cliphist clipman dunst fakeroot file-roller flatpak flex gc git groff alacritty apparmor aria2 autoconf automake bison groff guile hyprland jq kanshi linux-lts-headers mr make man-db mpv neofetch p7zip papirus-icon-theme patch pavucontrol pipes.sh pipewire pipewire-alsa pipewire-pulse pipewire-jack wireplumber locate pkgconf polkit-kde-agent rofi rustup sbctl swaylock swww texinfo thunar timeshift tldr man ufw unrar unzip usbutils waybar which wlogout
genfstab -U /mnt >> /mnt/etc/fstab
arch-chroot /mnt
