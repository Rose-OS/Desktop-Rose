#!/bin/bash

nvmeInstall() {
    grub-install --target=x86-64 /dev/nvme0n1
}

sdaInstall() {
    grub-install --target=x86-64 /dev/sda
}

mmcblkInstall() {
    grub-install --target=x86-64 /dev/mmcblk0
}