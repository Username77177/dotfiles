#!/usr/bin/env bash
# Это программа - программа для заметок в Bspwm-ground
if [[ $1 = "start" ]]
then
   touch ~/.notes.ground
   echo -e "#TODO" > ~/.notes.ground
   echo -e "<i>\n\n</i>\n" >> ~/.notes.ground
   echo -e "#Notes" >> ~/.notes.ground
   echo -e "<b>\n\n</b>" >> ~/.notes.ground
elif [[ $1 = "new" ]]
then
   alacritty -e vim ~/.notes.ground
elif [[ $1 = "show" ]]
then
   notes=`cat ~/.notes.ground`
   notify-send "#TODO and notes" "$notes"
fi
