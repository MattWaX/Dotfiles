#!/bin/sh

systemctl --user enable opentabletdriver.service --now

mpd &
wl-paste -w cliphist store & 

~/.config/mango/hard_reload.sh &

mmsg dispatch spawn,foot --app-id=mpc.mpd -e rmpc

tmux new -ds 'netscreend' '~/.scripts/netscreend' &

~/.config/mango/hardware.sh
