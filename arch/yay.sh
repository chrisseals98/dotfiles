#!/usr/bin/bash
countdown() {
    local count=$1
    while [ $count -gt 0 ]; do
        echo -ne "$count.."
        sleep 1
        ((count--))
    done
}

echo "Starting yay script..."
countdown 3

sudo pacman -S --needed base-devel git
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

echo "Yay installed! You can now remove the yay directory."
