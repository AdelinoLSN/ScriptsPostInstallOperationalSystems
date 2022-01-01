#!/bin/bash

echo "Installing and customizing ZSH..."

sudo apt install zsh curl -y

curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh; zsh

sudo usermod --shell $(which zsh) $USER

git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting 
git clone https://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions

rm ~/.zshrc
cp ~/scripts_post_install_os/zsh_script/.zshrc ~/.zshrc

git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install

/bin/zsh

/bin/bash zsh_script_theme.sh

echo "ZSH installed!"
