#! /bin/sh
#run this as root, Obviously.
pacman -S --noconfirm zram-generator
echo "[zram]" >> /etc/systemd/zram-generator.conf
echo "zram-size = ram / 2" >> /etc/systemd/zram-generator.conf
echo "compression-algorithm = lz4" >> /etc/systemd/zram-generator.conf
echo "swap-priority = 100" >> /etc/systemd/zram-generator.conf
echo "fs-type = swap" >> /etc/systemd/zram-generator.conf
