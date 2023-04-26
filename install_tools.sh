#!/bin/bash

sudo apt update
sudo apt install -y curl
sudo apt install -y git
sudo apt install -y terminator

LANG=C xdg-user-dirs-gtk-update

#Install Huge vim.
sudo apt install -y vim-nox
echo 'set number' > ~/.vimrc
echo 'set smartindent' >> ~/.vimrc
echo 'set expandtab' >> ~/.vimrc
echo 'set shiftwidth=4' >> ~/.vimrc
echo 'set softtabstop=4' >> ~/.vimrc
echo 'set tabstop=4' >> ~/.vimrc
echo 'syntax enable' >> ~/.vimrc

#Install emacs.
#sudo apt install -y emacs

#Install VScode.
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
sudo apt install -y apt-transport-https
sudo apt update
sudo apt install -y code
rm microsoft.gpg
