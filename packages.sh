#!/usr/bin/bash
countdown() {
    local countdown=$1
    while [ $count -gt 0 ]; do
        echo -ne "\r$count.."
        sleep 1
        ((count--))
    done
    echo -ne "\rGO!\n"
}

echo "Starting packages script..."

echo "Updating mirrorlist..."
countdown(3)
sudo pacman -S --noconfirm reflector
sudo reflector --verbose --sort rate -l 75 --save /etc/pacman.d/mirrorlist

echo "Updating system..."
countdown(3)
sudo pacman -Syu --noconfirm

echo "Installing packages..."
countdown(3)
sudo pacman -S --noconfirm sudo vim git zsh sshfs reflector fastfetch power-profiles-daemon avahi firefox steam discord kdegraphics-thumbnailers ffmpegthumbs
