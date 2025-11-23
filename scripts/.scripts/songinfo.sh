#!/bin/sh

music_dir="$HOME/Music"
current_song="$(mpc --format "$music_dir"/%file% current)"
previewname="${current_song%/*}/cover.jpg"
appname="mpd"

# yes "y" | ffmpeg -i "$filename" -map 0:1 "$previewname" # > /dev/null 2>&1
previus_notification=$(cat /tmp/last-song-notification-id)
if [ -z "$previus_notification" ]; then
    notify-send -a $appname "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)" -i "$previewname" -p > /tmp/last-song-notification-id
else
    notify-send -a $appname -r "$previus_notification" "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)" -i "$previewname" -p > /tmp/last-song-notification-id
fi
