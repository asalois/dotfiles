#!/bin/bash
dir=$(pwd)
ln -sf  $dir/dot_zshrc ~/.zshrc
ln -sf  $dir/dot_bashrc ~/.bashrc
ln -sf  $dir/config.fish ~/.config/fish/config.fish
ln -sf  $dir/starship.toml ~/.config/starship.toml
ln -sf  $dir/alacritty.yml ~/.config/alacritty/alacritty.yml
ln -sf  $dir/alacritty.toml ~/.config/alacritty/alacritty.toml
ln -sf  $dir/dot_vimrc ~/.vimrc
ln -sf  $dir/dot_gotconfig ~/.gitconfig
ln -sf  $dir/ssh_config ~/.ssh/config
