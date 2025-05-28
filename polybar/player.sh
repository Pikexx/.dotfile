#!/bin/bash

status=$(playerctl status 2>/dev/null)

if [[ $status == "Playing" || $status == "Paused" ]]; then
    artist=$(playerctl metadata artist)
    title=$(playerctl metadata title)
    echo "$artist - $title"
else
    echo "No music playing"
fi

