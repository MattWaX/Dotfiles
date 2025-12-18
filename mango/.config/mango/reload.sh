#!/bin/sh

[ -f ~/.config/mango/monitors ] && ~/.config/mango/monitors & 

killall waybar; waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css &
killall swww-daemon; swww-daemon &
killall swaync; swaync &
killall wlsunset; wlsunset -T 5001 -t 5000 -S 06:30 -s 20:00 &
