#!/bin/bash
dir=$(pwd)
ln -s  $dir/dot_zshrc ~/.zshrc
ln -s  $dir/dot_bashrc ~/.bashrc
ln -s  $dir/starship.toml ~/.config/starship.toml
ln -s  $dir/dot_vimrc ~/.vimrc
ln -s  $dir/ssh_config ~/.ssh/config
