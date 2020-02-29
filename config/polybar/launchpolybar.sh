#!/usr/bin/env bash
# Внимание! Этот скрипт нужен для запуска polybar, он используется в конфигурационном файле Bspwm для автозапуска.

# Terminate already running bar instances
killall -q polybar
# If all your bars have ipc enabled, you can also use 
# polybar-msg cmd quit

# Launch bar1 and bar2
echo "---" | tee -a /tmp/topbar.log /tmp/bottombar.log
polybar -c $HOME/dotfiles/config/polybar/polybar.conf top >> /tmp/polybar1.log 2>&1 &
# polybar bottom >> /tmp/polybar2.log 2>&1 &

echo "Bars launched..."
