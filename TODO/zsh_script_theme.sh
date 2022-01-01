#!/bin/bash

wget -c -O ~/Downloads/Hack.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v1.2.0/Hack.zip"

mkdir ~/.fonts && cd ~/.fonts

unzip ~/Downloads/Hack.zip

echo "Set your terminal default font to Hack"
echo "Continue from the Powerlevel9k topic (https://medium.com/@ivanaugustobd/seu-terminal-pode-ser-muito-muito-mais-produtivo-3159c8ef77b2)"