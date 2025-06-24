#!/bin/bash

ln -s $(pwd -P)/gitignore ~/.gitignore
ln -s $(pwd -P)/bash_aliases ~/.bash_aliases
ln -s $(pwd -P)/gitconfig ~/.gitconfig
sudo ln -s $(pwd -P)/scripts/gitbmerge /usr/local/bin/gitbmerge
sudo ln -s $(pwd -P)/scripts/mmake /usr/local/bin/mmake
ln -s $(pwd -P)/config/kitty ~/.config/kitty
ln -s $(pwd -P)/config/nvim ~/.config/nvim
ln -s $(pwd -P)/config/clangd ~/.config/clangd
sudo ln -s $(pwd -P)/nix.conf /etc/nix/nix.conf

