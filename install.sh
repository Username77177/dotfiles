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
    ln -sfr config/nvim ~/.config/
    ln -sfr config/compton.conf ~/.config/
    ln -sfr config/i3 ~/.config/
    ln -sfr config/i3status/ ~/.config/
    ln -sfr config/polybar ~/.config/
    ln -sfr config/bspwm ~/.config/
    ln -sfr config/sxhkd ~/.config/
    ln -sfr config/vifm ~/.config/
    ln -sfr config/awesome/ ~/.config/
    ln -sfr config/vifm/ ~/.config/
    ln -sfr config/zathura/ ~/.config/
    ln -sfr config/ranger/ ~/.config/

elif [[ $1 = "install" ]]; then
    echo "Terminal install"
    sleep 1
    sudo add-apt-repository ppa:mmstick76/alacritty

    # Polybar dependecies and more
    sudo apt install compton rofi trash-cli alacritty tmux nodejs python3 vifm zsh scrot firefox xclip cmake cmake-data libcairo2-dev libxcb1-dev libxcb-ewmh-dev libxcb-icccm4-dev libxcb-image0-dev libxcb-randr0-dev libxcb-util0-dev libxcb-xkb-dev pkg-config python-xcbgen xcb-proto libxcb-xrm-dev i3-wm libasound2-dev libmpdclient-dev libiw-dev libcurl4-openssl-dev dunst pavucontrol zathura

    # Polybar install 
    git clone https://github.com/polybar/polybar.git ~/.polybar && ~/.polybar/build.sh

    # Nvim Install
    echo "Neovim install"
    sleep 1
    sudo add-apt-repository ppa:neovim-ppa/stable
    sudo apt-get update
    sudo apt install nodejs-dev libssl1.0-dev node-gyp
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

    elif [[ $input = 2 ]]; then
       sudo apt install bspwm sxhkd 
    fi

    echo "Warning! If you on Ubuntu < 19, then add nvim repo from launchpad and reinstall programm"
    sleep 3
    # Ohmyzsh Install
    cd ~
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi


