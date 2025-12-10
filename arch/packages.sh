#!/usr/bin/bash
countdown() {
    local count=$1
    while [ $count -gt 0 ]; do
        echo -ne "$count.."
        sleep 1
        ((count--))
    done
}

echo "Starting packages script..."

echo "Updating mirrorlist..."
countdown 3
sudo pacman -S --noconfirm reflector
sudo reflector --verbose --sort rate -l 75 --save /etc/pacman.d/mirrorlist

echo "Updating system..."
countdown 3
sudo pacman -Syu --noconfirm

echo "Installing packages..."
countdown 3
sudo pacman -S --noconfirm sudo vim git zsh sshfs flatpak xdg-desktop-portal xdg-desktop-portal-kde fastfetch amd-ucode power-profiles-daemon avahi firefox steam discord kdegraphics-thumbnailers ffmpegthumbs ttf-meslo-nerd piper gimp partitionmanager ntfs-3g kio-admin

echo "Packages installed!"
