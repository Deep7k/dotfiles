<!-- # Introduction

This repository serves as my way to help me setup and maintain my Ubuntu(WSL2). It takes the effort out of installing everything manually. Everything needed to install my preferred setup of Ubuntu(WSL2) is detailed in this readme. Feel free to explore, learn and copy parts for your own dotfiles. Enjoy!!

# A fresh ubuntu setup

These instructions are for setting up new Ubuntu(WSL2) devices.
```
git clone https://github.com/Deep7k/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
``` -->
## Zsh & Oh-my-zsh
<!-- <p align="left"><img src="media/zshLook.png"></p> -->

### Working...

## Neovim
<!-- <p align="left"><img src="media/nvimLook.png"></p> -->

Install latest version of neovim
```
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt update 
sudo apt install neovim -y
```
Run the following command which creates a symbolic link to neovim config dir so that neovim can source its configurations directly from this repo
```
bash nvim-config-install.sh
```
Open nvim and type the following command to install plugins and load config files
```
:PackerInstall
```
Exit and open neovim to see changes
