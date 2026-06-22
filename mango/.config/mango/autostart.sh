#!/bin/sh

/usr/lib/xdg-desktop-portal &
/usr/lib/xdg-desktop-portal-wlr &

systemctl --user enable opentabletdriver.service --now

kanshi &
mpd &
wl-paste -w cliphist store & 

~/.config/mango/hard_reload.sh &

mmsg dispatch spawn,foot --app-id=mpc.mpd -e rmpc
