#!/bin/bash

mkdir Workspace

sudo apt update

sudo apt purge -y gnome-contacts geary popsicle* gnome-weather gnome-calendar gnome-calculator
sudo apt purge -y gedit libreoffice-* gnome-user-docs*

sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/sublimehq-archive.gpg
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update && sudo apt install sublime-text -y

sudo apt install -y zsh
chsh -s $(which zsh)

sudo apt install -y git
