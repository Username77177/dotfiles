#!/usr/bin/env bash

if [[ $1 = "left_click" ]]; then
    pkill polybar
    killall -q firefox
    pkill alacritty
    pkill mpd
    pkill tmux
    pkill telegram-desktop
    killall -q save_your_eyes.sh
elif [[ $1 = "right_click" ]]; then
    ~/dotfiles/config/polybar/launchpolybar_bspwm.sh &
    ~/dotfiles/scripts/save_your_eyes.sh &
    killall -q game_mode.sh
fi
