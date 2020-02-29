#!/usr/bin/env bash

if [[ $1 = "config" ]]; then

    #Mouse tweaks
    cp 40-libinput.conf usr/share/X11/xorg.conf.d/40-libinput.conf
    
    # Home directory configure
    ln -sfr ./tmux.conf ~/.tmux.conf 
    ln -sfr ./alacritty.yml ~/.alacritty.yml
    ln -sfr ./vimrc.old ~/.vimrc
    ln -sfr ./XRESOURCES-for-all ~/.Xresources
    ln -sfr ./zshrc ~/.zshrc
    
    # .config directory configure
    ln -sfr ./config/dunst ~/.config/
    ln -sfr ./config/mpd ~/.config/
    ln -sfr ./config/nvim ~/.config/
    ln -sfr ./config/compton.conf ~/.config/
    ln -sfr ./config/i3 ~/.config/

elif [[ $1 = "install" ]]; then
    sudo apt install nvim compton i3 rofi
    # Polybar dependecies
    sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 git curl wget
    # Polybar install 
    git clone https://github.com/polybar/polybar.git

    echo "Warning! If you on Ubuntu < 19, then add nvim repo from launchpad and reinstall programm"
    sleep 3

fi


