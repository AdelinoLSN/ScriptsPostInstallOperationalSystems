#!/bin/bash
echo "Buscando pacotes..."
sudo apt update

echo "Instalando softwares básicos..."
sudo apt install ntfs-3g -y
sudo apt install git -y

echo "Removendo softwares que não serão utilizados..."
sudo apt purge xed libreoffice* warpinator thunderbird* hexchat* transmission-* -y
sudo apt purge  celluloid rhythmbox* hypnotix -y

echo "Atualizando todos os softwares do sistema..."
sudo apt update && sudo apt upgrade -y
sudo apt dist-upgrade -y && sudo apt autoremove -y

echo "Instalando softwares necessários..."
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt-get install sublime-text -y
sudo apt install gparted -y
sudo apt install zsh -y && chsh -s $(which zsh)

echo "Reiniciando..."
reboot
