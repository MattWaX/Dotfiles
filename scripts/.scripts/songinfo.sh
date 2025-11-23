#!/bin/sh

music_dir="$HOME/Music"
filename="$(mpc --format "$music_dir"/%file% current)"
previewname="/tmp/current_cover.jpg"

yes "N" | ffmpeg -i "$filename" -map 0:1 "$previewname" > /dev/null 2>&1
previus_notification=$(cat /tmp/last-song-notification-id)
if [ -z "$previus_notification" ]; then

    notify-send "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)" -i "$previewname" -p > /tmp/last-song-notification-id
else
    notify-send -r "$previus_notification" "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)" -i "$previewname" -p > /tmp/last-song-notification-id
fi
