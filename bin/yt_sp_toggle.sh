#!/bin/bash

exec >> "$HOME/.ytsp.log" 2>&1
echo "$(date): Script started"

# Get the Firefox MPRIS player (in case it's not just "firefox")
firefox_player=$(playerctl -l | grep firefox | head -n 1)

spotify_paused_by_script=false

while true; do
    yt_status=$(playerctl -p "$firefox_player" status 2>/dev/null)
    sp_status=$(playerctl -p spotify status 2>/dev/null)

    if [ "$yt_status" = "Playing" ]; then
        if [ "$sp_status" = "Playing" ]; then
            playerctl -p spotify pause
            spotify_paused_by_script=true
            notify-send "YouTube ▶️" "Paused Spotify"
            echo "$(date): YouTube playing → Paused Spotify"
        fi
    elif [ "$yt_status" = "Paused" ]; then
        if [ "$sp_status" = "Paused" ] && [ "$spotify_paused_by_script" = true ]; then
            playerctl -p spotify play
            spotify_paused_by_script=false
            notify-send "YouTube ⏸" "Resumed Spotify"
            echo "$(date): YouTube paused → Resumed Spotify"
        fi
    fi

    sleep 1
done

