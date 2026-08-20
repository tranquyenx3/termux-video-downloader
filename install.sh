#!/data/data/com.termux/files/usr/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_DIR="$HOME/bin"
DOWNLOAD_DIR="$HOME/storage/downloads/Video"

echo "=== TERMUX VIDEO DOWNLOADER v3 ==="
pkg update -y
pkg install -y python python-pip ffmpeg
python -m pip install -U "yt-dlp[default]"
termux-setup-storage || true

mkdir -p "$BIN_DIR" "$DOWNLOAD_DIR"
cp "$REPO_DIR/vdown" "$BIN_DIR/vdown"
cp "$REPO_DIR/termux-url-opener" "$BIN_DIR/termux-url-opener"
chmod +x "$BIN_DIR/vdown" "$BIN_DIR/termux-url-opener"

touch "$HOME/.bashrc"
grep -qxF 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" || echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
export PATH="$BIN_DIR:$PATH"

echo
echo "CÀI ĐẶT HOÀN TẤT"
echo "Chạy: vdown"
echo "Tải trực tiếp: vdown \"URL\""
echo "Thư mục: $DOWNLOAD_DIR"
echo "yt-dlp: $(yt-dlp --version)"
