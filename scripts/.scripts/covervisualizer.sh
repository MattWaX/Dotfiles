#!/bin/sh

music_dir="$HOME/Music"

while true; do
    previewname="$music_dir/$(mpc --format %artist% current)/$(mpc --format %album% current)/cover.png"
    clear
    viu "${previewname}" --absolute-offset -w 77
    sleep 10
done
