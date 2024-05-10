#! /bin/bash
if [ "$EUID" -ne 0 ]; then
  echo "Not ran as sudo | Please run this script as sudo"
  exit 1
fi

read -p "Enter the target disk: " target_disk

# Create a new GPT partition table
parted -s "$target_disk" mklabel gpt

# Create the EFI partition
echo -e "n\n1\n\n+512M\nt\n1\n1\nw" | fdisk "$target_disk"

# Create the secondary partition
echo -e "n\n2\n\n\nw" | fdisk "$target_disk"

echo "Formating partitions with file systems"

read -p "Enter the boot EFI partiton: " efi_partiton
read -p "Enter the root partiton: " root_partiton

mkfs.vfat -F 32 "$efi_partiton"

read -p "Enter the File system for root" filesystem
mkfs."$filesystem" "$root_partiton"

mount "$root_partiton" /mnt

mkdir --parents /mnt/boot/efi

mount "$efi_partiton" /mnt/boot/efi

pacstrap -K /mnt base linux linux-firmware vim networkmanager base-devel grub efibootmgr os-prober

genfstab -U /mnt >> /mnt/etc/fstab

ln -sf /mnt/usr/share/zoneinfo/America/New_york /mnt/etc/localtime

echo "en_US.UTF-8" > /mnt/etc/locale.gen

locale-gen

echo "LANG=en_US.UTF-8" > /mnt/etc/locale.conf

echo "Installing grub from a non chroot enivorment is impossible So please run grub-install on the BOOT partiton"
echo "Also run grub-mkconfig -o /boot/grub/grub.cfg"

#umount -a

#reboot
