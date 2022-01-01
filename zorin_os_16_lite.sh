#!/bin/bash

echo "Uninstalling not useful softwares..."

sudo apt purge -y xfburn redshift* blueman libreoffice* gimp* thunderbird*
sudo apt purge -y remmina* gnome-mahjongg gnome-mines gnome-sudoku
sudo apt purge -y quadrapassel aisleriot cheese* pitivi parole*
sudo apt purge -y rhythmbox* gnome-sound-recorder gnome-tour

echo "Softwares unistalled!"

echo "Updating softwares and operational system..."

sudo apt update
sudo apt upgrade -y
sudo apt dist-upgrade -y
sudo apt autoremove -y

echo "Softwares and operational system updated!"

echo "Installing softwares (from Zorin OS 16 Lite repositories)..."

sudo apt install -y baobab libreoffice-writer libreoffice-calc vlc

echo "Installing softwares (from non Zorin OS 16 Lite repositories)..."

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt update
sudo apt install sublime-text -y

cd ~/Downloads
wget -c -O code.deb "https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
sudo dpkg -i  code.deb
sudo apt install -f
sudo dpkg -i  code.deb
rm -rf code.deb

wget -c "https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb"
sudo dpkg -i google-chrome-stable_current_amd64.deb
sudo apt install -f
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm -rf google-chrome-stable_current_amd64.deb

cd ~

echo "Softwares installed!"

echo "Creating workspace folder..."

mkdir ~/Workspace

echo "Workspace folder created!"
