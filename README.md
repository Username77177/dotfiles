# dotfiles

- Mouse config (*40-libinput.conf*) 
- i3
	- i3 config manually
	- rofi
	- compton
	- i3status
- Editors (Doom Emacs, Vim, Neovim)

My Configuration files

40-libinput.conf - Mousepad configuration on laptop

`ln -sfr 40-libinput.conf /usr/share/X11/xorg.conf.d/40-libibput.conf`

## i3

In i3 folder i collected all my parts from i3 config.
For build one file and link it:
- `cat i3/* >> i3config`
- `mkdir ~/.config/i3 & ln -sfr ~/Configurations/i3/config-i3 ~/.config/i3/config`

### Rofi and Xterm
Rofi - menu for launching applications and more

`ln -sfr XRESOURCES-for-all ~/.Xresources`

### Compton and Dunst
Compton - Compositor (transparency, glide, fade effects and more)
Dunst - Notification manager
`mkdir ~/.config/dunst & ln -sfr dunst ~/.config/dunst/dunstrc`
`ln -sfr ~/compton.conf ~/.config/`

### i3status
i3status - statusbar for i3

`mkdir ~/.config/i3status/config & ln -sfr i3status ~/.config/i3status/config`

## Editors
### Vim
You need [vim-plug](https://github.com/junegunn/vim-plug)

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```
Then install my config:

**FOR VIM:**

`ln -sfr vimrc ~/.vimrc`

**FOR NVIM**

`mkdir ~/.config/nvim & ln -sfr neovimrc ~/.config/nvim/init.vim`

**FOR DOOM EMACS**

`ln -sfr doom.d ~/.doom.d`


