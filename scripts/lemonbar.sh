#!/bin/sh

clock() {
    date +%H:%M:%S
}

battery() {
    cat /sys/class/power_supply/BAT0/capacity
}

while ( true ); do
    BAR_INPUT="%{cB=white}LIFE : $(battery)%% TIME : $(clock)"
    echo $BAR_INPUT
    sleep 1
done
