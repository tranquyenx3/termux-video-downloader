#!/data/data/com.termux/files/usr/bin/bash
set -e
D="$(cd "$(dirname "$0")" && pwd)"
pkg update -y
pkg install -y python python-pip ffmpeg
python -m pip install -U "yt-dlp[default]"
termux-setup-storage || true
mkdir -p "$HOME/bin" "$HOME/.config/vdown" "$HOME/storage/downloads/Video"
cp "$D/vdown" "$HOME/bin/vdown"; cp "$D/termux-url-opener" "$HOME/bin/termux-url-opener"
chmod +x "$HOME/bin/vdown" "$HOME/bin/termux-url-opener"
touch "$HOME/.bashrc"
grep -qxF 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" || echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
export PATH="$HOME/bin:$PATH"
echo "VDown Pro UI installed. Chạy: vdown"
