#!/bin/bash
sudo ln -sfr 40-libinput.conf /usr/share/X11/xorg.conf.d/40-libinput.conf
rm i3config
cat i3/* >> i3config
rm -rf ~/.config/i3/ && mkdir ~/.config/i3/ && ln -sfr i3config ~/.config/i3/config
ln -sfr XRESOURCES-for-all ~/.Xresources
rm -rf ~/.config/dunst/ 
rm .config/compton.conf
mkdir ~/.config/dunst 
ln -sfr dunst ~/.config/dunst/dunstrc && ln -sfr compton $HOME/.config/compton.conf
rm -rf ~/.config/i3status
mkdir ~/.config/i3status && ln -sfr i3status ~/.config/i3status/config

curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -sfr vimrc ~/.vimrc
ln -sfr doom.d ~/.doom.d
