#! /bin/sh
echo "installing sbctl"
pacman -S --noconfirm sbctl
sbctl create-keys
sbctl enroll-keys -m -f
sbctl verify
sbctl sign /boot/vmlinuz-linux-zen
sbctl sign /boot/EFI/BOOT/BOOTX64.EFI
sbctl sign /boot/EFI/systemd/systemd-bootx64.efi
