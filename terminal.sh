#!/usr/bin/bash
countdown() {
    local count=$1
    while [ $count -gt 0 ]; do
        echo -ne "$count.."
        sleep 1
        ((count--))
    done
}

echo "Starting terminal script..."
countdown 3

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
sed -i 's/^ZSH_THEME=.*/ZSH_THEME="powerlevel10k\/powerlevel10k"/' ~/.zshrc

echo "Done! Please set fonts correctly in the terminal."
