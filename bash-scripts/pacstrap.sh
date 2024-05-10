#! /bin/sh
mkfs.ext4 -f /dev/nvme0n1p3
mkfs.ext4 -f /dev/nvme0n1p2
mkfs.vfat -F 32 /dev/nvme0n1p1
pacstrap -K /mnt base linux-zen linux-lts linux-firmware linux-lts-headers linux-zen-headers
arch-chroot /mnt /bin/bash
