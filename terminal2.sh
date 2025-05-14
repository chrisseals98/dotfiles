#!/usr/bin/bash
countdown() {
    local count=$1
    while [ $count -gt 0 ]; do
        echo -ne "$count.."
        sleep 1
        ((count--))
    done
}

echo "Installing oh my zsh..."
countdown 3

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "Done! Please run terminal3.sh next"