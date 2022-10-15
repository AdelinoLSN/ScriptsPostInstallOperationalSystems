#!/bin/bash

sudo apt update
sudo apt upgrade -y

sudo apt install -y git zsh
chsh -s $(which zsh)
zsh