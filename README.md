# 🎧 YouTube-Spotify Toggle (Linux)

Auto-pause Spotify when YouTube starts playing, and resume Spotify when YouTube is paused — clean, simple, and silent.

## ✨ Features

- ⏸ Auto-pause Spotify when YouTube plays
- ▶️ Auto-resume Spotify when YouTube pauses
- ✅ Respects manual Spotify controls
- 🔔 Sends desktop notifications
- ⚙️ Runs as a `systemd --user` background service

## 📦 Requirements

- `playerctl`
- `libnotify`
- Systemd-based Linux (Arch, Ubuntu, Fedora, etc.)

Install them with:

```bash
sudo pacman -S playerctl libnotify      # Arch
# or
sudo apt install playerctl libnotify    # Debian/Ubuntu

```
