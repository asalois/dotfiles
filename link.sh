#!/bin/bash
dir=$(pwd)
ln -sf  $dir/dot_zshrc ~/.zshrc
ln -sf  $dir/dot_bashrc ~/.bashrc
ln -sf  $dir/config.fish ~/.config/fish/config.fish
ln -sf  $dir/starship.toml ~/.config/starship.toml
ln -sf  $dir/dot_vimrc ~/.vimrc
ln -sf  $dir/ayu.vim ~/.vim/colors/ayu.vim
ln -sf  $dir/solarized8.vim ~/.vim/colors/solarized8.vim
ln -sf  $dir/space-vim-dark.vim ~/.vim/colors/space-vim-dark.vim
ln -sf  $dir/ssh_config ~/.ssh/config
