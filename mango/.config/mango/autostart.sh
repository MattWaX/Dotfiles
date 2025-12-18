#!/bin/sh

systemctl --user import-environment WAYLAND_DISPLAY XDG_CURRENT_DESKTOP
dbus-update-activation-environment --systemd WAYLAND_DISPLAY XDG_CURRENT_DESKTOP=wlroots
systemctl --user restart xdg-desktop-portal

systemctl --user enable opentabletdriver.service --now

/usr/lib/xdg-desktop-portal-wlr &

mpd &
wl-paste -w cliphist store & 
