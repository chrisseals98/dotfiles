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

echo "Starting zsh script..."
countdown(3)

chsh -s /usr/bin/zsh

echo "Finished changing shell to zsh. Please restart to run the terminal script."
