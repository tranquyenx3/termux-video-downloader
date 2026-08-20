#!/data/data/com.termux/files/usr/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_DIR="$HOME/bin"

pkg update -y
pkg install -y python python-pip ffmpeg
python -m pip install -U "yt-dlp[default]"
termux-setup-storage || true

mkdir -p "$BIN_DIR" "$HOME/.config/vdown" "$HOME/storage/downloads/Video"

cp "$REPO_DIR/vdown" "$BIN_DIR/vdown"
cp "$REPO_DIR/termux-url-opener" "$BIN_DIR/termux-url-opener"
chmod +x "$BIN_DIR/vdown" "$BIN_DIR/termux-url-opener"

touch "$HOME/.bashrc"
grep -qxF 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" || \
  echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"

export PATH="$BIN_DIR:$PATH"

echo
echo "=========================================="
echo " VDown 4.2 CLEAN installed"
echo " Run: vdown"
echo "=========================================="
