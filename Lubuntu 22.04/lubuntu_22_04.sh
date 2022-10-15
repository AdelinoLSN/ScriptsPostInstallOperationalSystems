#!/bin/bash

# Criar diretórios
cd ~
mkdir Workspaces
mkdir AppImages

# Histórico do bash
history -a

# Atualizar meta pacotes
sudo apt update

# Remover pacotes CLIs não utilizados
sudo apt purge -y \
	bluedevil

# Remover pacotes gráficos não utilizados
sudo apt purge -y \
	libreoffice-* \
	quassel-* \
	qtpass \
	noblenote \
	imagemagick* \
	skanlite \
	transmission-* \
	2048-qt

# Atualização de todos os pacotes
sudo apt upgrade -y

# Remoção de pacotes não mais necessários
sudo apt autoremove -y

# Instalação de pacotes CLIs
sudo apt install -y \
	apt-transport-https \
	curl \
	wget \
	git \
	rar \
	unrar

# Instalação de pacotes gráficos
sudo apt install -y \
	baobab \
	gparted

# Instalação de fonte Hack
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/Hack.zip -P /tmp
mkdir ~/.fonts && cd ~/.fonts
unzip /tmp/Hack.zip
cd ~

# Post script
echo "Ler arquivo ./lubuntu_22_04-post_scripts.txt"