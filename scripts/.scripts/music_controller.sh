#!/bin/sh

# zellij delete-session "MUSIC CONTROLLER" --force
# zellij -n ~/.config/zellij/layouts/musicplayer.kdl -s "MUSIC CONTROLLER"

tmux new-session -s "music_controller" -d 'while true; do rmpc; done' \; split-window -d 'vis' \; attach
