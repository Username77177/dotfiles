#!/bin/bash
# Внимание! Этот скрипт нужен для того, чтобы использовать ПК по технике томата. Этот скрипт запускается при запуске bspwm.
pkill save_your_eyes.sh
sleep 7 # Loading system

while :
do
	notify-send "Display will turn off in 30 minutes"
	sleep 1380
	notify-send "Display will turn off in 2 minutes for 5 minutes"
	sleep 120
	# an half hour
	xrandr --output eDP-1 --off
	# turn off display
	sleep 300
	# 5 minutes
	xrandr --output eDP-1 --auto
	# turn on display
done
