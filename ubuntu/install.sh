#!bin/bash

# update apt
sudo apt update

# install essential
sudo apt install build-essential
sudo apt install curl

# install zsh
sudo apt install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
