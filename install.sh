#!/usr/bin/env bash
# Adapted for Arch Linux and Manjaro

if [[ $1 = "config" ]]; then
    echo "If you want nice UI, then install JetBrains Mono"
    echo "https://www.jetbrains.com/lp/mono"
    echo "For Polybar you can install font-awesome"
    echo "https://fontawesome.com/start"
    echo "Also, if you want, you can download Dropbox"
    echo "https://www.dropbox.com/en/install"
    sleep 3

    #Mouse tweaks
    sudo cp 40-libinput.conf /usr/share/X11/xorg.conf.d/40-libinput.conf
    
    # Home directory configure
    ln -sfr tmux.conf ~/.tmux.conf 
    ln -sfr alacritty.yml ~/.alacritty.yml
    ln -sfr vimrc.old ~/.vimrc
    ln -sfr XRESOURCES-for-all ~/.Xresources
    ln -sfr zshrc ~/.zshrc
    ln -sfr config/ncmpcpp ~/
    ln -sfr config/newsbeuter ~/
    # Move any photo to /usr/share/pixmaps with name wallpaperforlightdm.jpg
    sudo cp config/lightdm/lightdm-gtk-greeter.conf /etc/lightdm/lightdm-gtk-greeter.conf
    
    # .config directory configure
    ln -sfr ./config/dunst ~/.config/
    ln -sfr ./config/mpd ~/.config/
    mkdir -p ~/.config/nvim
    cp ./config/nvim/big_build/init.vim ./config/nvim/
    ln -sfr config/nvim ~/.config/
    ln -sfr config/compton.conf ~/.config/
    ln -sfr config/i3 ~/.config/
    ln -sfr config/i3status/ ~/.config/
    ln -sfr config/vifm/ ~/.config/
    ln -sfr config/zathura/ ~/.config/
    ln -sfr config/ranger/ ~/.config/

    # PostInstall
    mkdir ~/gitprojects ~/wallpapers

    echo "Terminal install"
    sleep 1

elif [[ $1 = "install" ]]; then
    
    # Main tools
    sudo pacman -Sy networkmanager xterm xorg-server xorg-xinit xorg-xrandr xorg-xset picom alacritty dunst neovim rofi lightdm ttf-jetbrains-mono ttf-font-awesome redshift dmenu ranger firefox nautilus lxappearance snapd pavucontrol pulseaudio gcc pamac deepin-gtk-theme deepin-icon-theme sxiv mpv zeal zathura graphviz karchive xclip appimagelauncher zathura-pdf-mupdf zathura-djvu polkit polkit-gnome pulseaudio-alsa alsa-plugins alsa-lib

    # Nvim-plug install
    echo "Neovim-plug install"
    sleep 1
    curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

    # Ohmyzsh Install
    cd ~
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi
