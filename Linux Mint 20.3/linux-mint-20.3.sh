#!/bin/bash

# Repositório temporário
cd /home/adelino
rm -rf _temp
mkdir _temp

# Atualizar os repositórios
sudo apt update

# Remover programas que não serão utilizados
sudo apt purge xed libreoffice* warpinator thunderbird* hexchat* celluloid rhythmbox* hypnotix -y

# Atualiza os softwares que sobraram
sudo apt update && sudo apt upgrade -y
sudo apt dist-upgrade -y && sudo apt autoremove -y
flatpak update

# Instala softwares utilitários de linha de comando
sudo apt install ntfs-3g git wget curl apt-transport-https -y

# Instala softwares desejados (GUI)
sudo apt install gparted vlc -y

# Sublime Text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt-get install sublime-text -y

# Visual Studio Code
flatpak install com.visualstudio.code

# Instala o Grub Customizer
sudo add-apt-repository ppa:danielrichter2007/grub-customizer
sudo apt-get update
sudo apt-get install grub-customizer

# Instala e configura fonte Hack (Nerd Fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/Hack.zip -P /home/adelino/_temp
mkdir ~/.fonts && cd ~/.fonts
unzip ~/_temp/Hack.zip

# Baixa e configura o Zsh e o Oh My Zsh
sudo apt install zsh -y && chsh -s $(which zsh)
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf && ~/.fzf/install
# Baixa e copia o arquivo .zshrc para o local
cd /home/adelino
wget https://raw.githubusercontent.com/AdelinoLSN/Scripts-Post-Install-OSs/main/oh-my-zsh/.zshrc -P /home/adelino/_temp
rm .zshrc
mv _temp/.zshrc .zshrc

# Remove _temp
cd /home/adelino
rm -rf _temp