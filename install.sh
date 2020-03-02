#!/usr/bin/env bash

if [[ $1 = "config" ]]; then

    #Mouse tweaks
    sudo ln -sfr config/40-libinput.conf /usr/share/X11/xorg.conf.d/40-libinput.conf
    
    # Home directory configure
    ln -sfr tmux.conf ~/.tmux.conf 
    ln -sfr alacritty.yml ~/.alacritty.yml
    ln -sfr vimrc.old ~/.vimrc
    ln -sfr XRESOURCES-for-all ~/.Xresources
    ln -sfr zshrc ~/.zshrc
    
    # .config directory configure
    ln -sfr ./config/dunst ~/.config/
    ln -sfr ./config/mpd ~/.config/
    echo "[s]mall_config for nvim or [b]ig_config?"
    echo "s or b: "
    read input
    if [[ $input = "b" || $input = 'B' ]]; then
        cp ./config/nvim/big_build/init.vim ./config/nvim/
        mkdir -p ./config/nvim/plugged/coc.nvim
        cp ./config/nvim/big_build/coc-settings.json ./config/nvim/plugged/coc.nvim/
    else
        cp ./config/nvim/small_build/init.vim ./config/nvim/
    fi
    ln -sfr ./config/nvim ~/.config/
    ln -sfr ./config/compton.conf ~/.config/
    ln -sfr ./config/i3 ~/.config/
    ln -sfr ./config/polybar ~/.config/
    ln -sfr ./config/bspwm ~/.config/
    ln -sfr ./config/sxhkd ~/.config/
    ln -sfr ./config/vifm ~/.config/

elif [[ $1 = "install" ]]; then
    echo "Terminal install"
    sleep 1
    sudo add-apt-repository ppa:mmstick76/alacritty
    sudo apt install compton rofi trash-cli alacritty tmux nodejs python3 vifm zsh scrot firefox xclip
    # Nvim Install
    echo "Neovim install"
    sleep 1
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt install neovim npm 
    sudo apt remove vim
    # Nvim-plug install
    echo "Neovim-plug install"
    sleep 1
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    # Ccls (C++ complete)
    echo "Installing ccls (Completing programm for C++ (For Neovim))"
    sleep 1
    sudo snap install ccls --classic
    echo "Install i3 [1] or bspwm [2]"
    read input
    if [[ $input = 1 ]]; then
        sudo apt install i3

    elif [[ $input = 2 ]]; then
       sudo apt install bspwm sxhkd 
    fi
    # Polybar dependecies
    sudo apt-get install cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev libpulse-dev libxcb-composite0-dev xcb libxcb-ewmh2 git curl wget
    # Polybar install 
    git clone https://github.com/polybar/polybar.git

    echo "Warning! If you on Ubuntu < 19, then add nvim repo from launchpad and reinstall programm"
    sleep 3
    # Ohmyzsh Install
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


