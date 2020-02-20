sudo apt install bspwm sxhkd
mkdir $HOME/.config/bspwm
mkdir $HOME/.config/sxhkd
ln -sfr bspwmrc ~/.config/bspwm/bspwmrc
ln -sfr sxhkdrc ~/.config/sxhkd/sxhkdrc
chmod +x $HOME/.config/bspwm/bspwmrc
chmod +x $HOME/.config/sxhkd/sxhkdrc
