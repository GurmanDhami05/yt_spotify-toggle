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

Install dependencies with:

```bash
# Arch Linux
sudo pacman -S playerctl libnotify

# Debian/Ubuntu
sudo apt install playerctl libnotify-bin
```

## 🚀 Installation

1. Clone the repository:
   ```bash
   git clone https://github.com/GurmanDhami05/yt-spotify-toggle.git
   cd yt-spotify-toggle
   ```

2. Run the installation script:
   ```bash
   bash install.sh
   # or
   ./install.sh
   ```

After installation, the script runs in the background using `systemd --user` and starts automatically on login.

## 🔧 Usage

The service runs automatically in the background. To check its status:

```bash
systemctl --user status ytsp.service
```

To manually start/stop the service:

```bash
# Start the service
systemctl --user start ytsp.service

# Stop the service
systemctl --user stop ytsp.service
```

## 🗑️ Uninstall

To completely remove the service and files:

```bash
systemctl --user stop ytsp.service
systemctl --user disable ytsp.service
rm ~/.config/systemd/user/ytsp.service
rm -rf ~/.config/yt-spotify-toggle
systemctl --user daemon-reload
```

## 🤝 Contributing

Love the idea but think it could be even better? Awesome! Contributions are what make the open-source community such an amazing place to learn, inspire, and create.

### How to Contribute

1. **Fork the repository** and create your feature branch:
   ```bash
   git checkout -b feature/amazing-feature
   ```

2. **Make your changes** - whether it's:
   - 🐛 Fixing bugs
   - ✨ Adding new features
   - 📚 Improving documentation
   - 🎨 Making the code cleaner

3. **Test your changes** to make sure everything still works smoothly

4. **Commit your changes** with a descriptive message:
   ```bash
   git commit -m "Add some amazing feature"
   ```

5. **Push to your branch** and open a Pull Request:
   ```bash
   git push origin feature/amazing-feature
   ```

### Ideas for Contributions

- Support for other music players (Apple Music, etc.)
- Better notification customization
- Configuration file support
- Improved error handling
- Support for other video platforms

Feel free to open an issue first if you want to discuss your ideas! 💡

## 📜 License

This project is licensed under the [MIT License](./LICENSE) © 2025 GurmanDhami05.
