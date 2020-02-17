#!/bin/bash
sudo add-apt-repository ppa:mmstick76/alacritty
sudo add-apt-repository ppa:kelleyk/emacs
sudo apt update
sudo apt install git cmus suckless-tools firefox telegram-desktop npm python3 python3-pip vlc gifsicle i3 i3status rofi dunst compton zsh fonts-firacode tmux alacritty emacs26 curl ranger
# oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
# DOOM EMACS
git clone https://github.com/hlissner/doom-emacs ~/.emacs.d && ~/.emacs.d/bin/doom install
# FZF
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
# i3-gaps
mkdir $HOME/gitinstalled
sudo apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool libxcb-shape0-dev
sudo apt-get install libxcb-xrm-dev
cd ~/gitinstalled/
git clone https://www.github.com/Airblader/i3 ~/gitinstalled/i3-gaps
cd i3-gaps
git checkout gaps && git pull
autoreconf --force --install
rm -rf build
mkdir build
cd build
../configure --prefix=/usr --sysconfdir=/etc
make
sudo make install
# XWINWRAP
sudo apt-get install xorg-dev build-essential libx11-dev x11proto-xext-dev libxrender-dev libxext-dev gifsicle
git clone https://github.com/ujjwal96/xwinwrap.git ~/gitinstalled/xwinwrap
cd ~/gitinstalled/xwinwrap
make
sudo make install
make clean
# DOTFILES
git clone https://github.com/username77177/dotfiles.git
cd dotfiles
./links.sh
