#!/bin/bash
dir=$(pwd)
ln -sf  $dir/dot_zshrc ~/.zshrc
ln -sf  $dir/dot_bashrc ~/.bashrc
ln -sf  $dir/tmux.conf ~/.tmux.conf
ln -sf  $dir/config.fish ~/.config/fish/config.fish
ln -sf  $dir/starship.toml ~/.config/starship.toml
ln -sf  $dir/dot_vimrc ~/.vimrc
ln -sf  $dir/*.vim ~/.vim/colors/
ln -sf  $dir/ssh_config ~/.ssh/config
