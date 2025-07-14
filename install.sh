#!/bin/bash

set -e

echo "[1/3] Installing script to ~/.config/yt-spotify-toggle"
mkdir -p ~/.config/yt-spotify-toggle
cp -r bin ~/.config/yt-spotify-toggle/

echo "[2/3] Installing systemd user service"
mkdir -p ~/.config/systemd/user
cp systemd/ytsp.service ~/.config/systemd/user/

echo "[3/3] Enabling and starting service"
systemctl --user daemon-reload
systemctl --user enable ytsp.service
systemctl --user restart ytsp.service

echo "✅ Installation complete! Spotify will now auto-pause when YouTube plays."

