#!/bin/sh

music_dir="$HOME/Music"
filename="$(mpc --format "$music_dir"/%file% current)"
previewname="$music_dir/$(mpc --format %artist% current)/$(mpc --format %album% current)/cover.png"

[ -e "$previewname" ] || ffmpeg -y -i "$filename" -an -vf scale=128:128 "$previewname" > /dev/null 2>&1

notify-send -r 27072 "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)" -i "$previewname"
