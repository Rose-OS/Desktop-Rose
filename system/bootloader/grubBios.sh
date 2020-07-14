#!/bin/bash

nvmeInstall() {
    grub-install --target=i386-pc /dev/nvme0n1
}

sdaInstall() {
    grub-install --target=i386-pc /dev/sda
}

mmcblkInstall() {
    grub-install --target=i386-pc /dev/mmcblk0
}