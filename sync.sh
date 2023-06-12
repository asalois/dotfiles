#!/bin/bash
rsync -avP --progress dot_zshrc ~/.zshrc
rsync -rvP --progress starhsip.toml ~/.config/
rsync -rvP --progress dot_vimrc ~/.vimrc
rsync -rvP --progress my-theme.zsh-theme ~/.oh-my-zsh/themes/
rsync -rvP --progress ssh_config ~/.ssh/config
chmod 400 ~/.ssh/config
