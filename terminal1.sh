#!/usr/bin/bash
countdown() {
    local count=$1
    while [ $count -gt 0 ]; do
        echo -ne "$count.."
        sleep 1
        ((count--))
    done
}

echo "Starting zsh script..."
countdown 3

chsh -s /usr/bin/zsh

echo "Finished changing shell to zsh. Please restart then run terminal2.sh"