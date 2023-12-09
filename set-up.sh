#!/bin/bash
# add some options to dnf.conf
sudo bash -c "echo -e 'fastestmirror=True\ndeltarpm=True\nmax_parallel_downlods=10' >> /etc/dnf/dnf.conf"

# update and enable repos
#sudo dnf install --nogpgcheck https://dl.fedoraproject.org/pub/epel/epel-release-latest-$(rpm -E %rhel).noarch.rpm
#sudo dnf install --nogpgcheck https://mirrors.rpmfusion.org/free/el/rpmfusion-free-release-$(rpm -E %rhel).noarch.rpm https://mirrors.rpmfusion.org/nonfree/el/rpmfusion-nonfree-release-$(rpm -E %rhel).noarch.rpm
#sudo dnf config-manager --enable crb
#sudo dnf config-manager --enable powertools
#sudo dnf update

# install packages needed for linux brew
sudo dnf install zsh wget curl git
sudo dnf group install "Development Tools"
#/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
sleep 2
#echo 'eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"' >> .bashrc # install brew
#brew install btop htop neofetch fzf bat starhsip
#sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended # install oh my zsh
#sleep 2
#sudo dnf install redhat-mono-fonts google-droid-sans-mono-fonts google-noto-sans-mono-fonts powerline-fonts # install some fonts
#bash -c  "$(wget -qO- https://git.io/vQgMr)"
sleep 2
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/Hack.zip
unzip -d hack-font Hack.zip
ssh-keygen -t ed25519
ssh-add ~/.ssh/config

./sync.sh # sync config files
