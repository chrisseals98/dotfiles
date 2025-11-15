#!/usr/bin/bash
countdown() {
    local count=$1
    while [ $count -gt 0 ]; do
        echo -ne "$count.."
        sleep 1
        ((count--))
    done
}

echo "Starting vm setup script..."
countdown 3

sudo pacman -S --noconfirm virtualbox-guest-utils

echo "Starting vm service..."

sudo systemctl enable vboxservice
sudo systemctl start vboxservice

echo "...Done!"

return 0
