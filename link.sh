#!/bin/bash
dir=$(pwd)
ln -s  $dir/dot_zshrc ~/.zshrc
ln -s  $dir/dot_bashrc ~/.bashrc
ln -s  $dir/config.fish ~/.config/fish/config.fish
ln -s  $dir/starship.toml ~/.config/starship.toml
ln -s  $dir/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -s  $dir/dot_vimrc ~/.vimrc
ln -s  $dir/dot_gotconfig ~/.gitconfig
ln -s  $dir/ssh_config ~/.ssh/config
