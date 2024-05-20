#!/bin/bash

ln -sf $HOME/dotfiles/dot_bashrc $HOME/.bashrc
ln -sf $HOME/dotfiles/starship.toml $HOME/.config/starship.toml
ln -sf $HOME/dotfiles/dot_gitconfig $HOME/.gitconfig
ln -sf $HOME/dotfiles/tmux.conf $HOME/.tmux.conf
ln -sf $HOME/dotfiles/dot_vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/*.vim $HOME/.vim/colors/
ln -sf $HOME/dotfiles/config.fish $HOME/.config/fish/config.fish

