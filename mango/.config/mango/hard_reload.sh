#!/bin/sh

mmsg dispatch reload_config 2>&1 > /dev/null &

killall waybar; waybar -c ~/.config/mango/waybar/config.jsonc -s ~/.config/mango/waybar/style.css &
killall awww-daemon; awww-daemon &
killall swaync; swaync &
killall wlsunset; wlsunset -T 5001 -t 5000 -S 06:30 -s 20:00 &
killall kanshi; kanshi &
