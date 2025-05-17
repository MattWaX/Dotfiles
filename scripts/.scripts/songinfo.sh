#!/bin/sh

music_dir="$HOME/Music"
filename="$(mpc --format "$music_dir"/%file% current)"
previewname="$music_dir/$(mpc --format %artist% current)/$(mpc --format %album% current)/cover.png"

[ -e "$previewname" ] || ffmpeg -y -i "$filename" -an -vf scale=128:128 "$previewname" > /dev/null 2>&1
previus_notification=$(cat /tmp/last-song-notification-id)
if [ -z $previus_notification ]; then

    notify-send "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)" -i "$previewname" -p > /tmp/last-song-notification-id
else
    notify-send -r $previus_notification "Now Playing" "$(mpc --format '%title% \n%artist% - %album%' current)" -i "$previewname" -p > /tmp/last-song-notification-id
fi
