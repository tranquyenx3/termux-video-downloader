#!/data/data/com.termux/files/usr/bin/bash
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_DIR="$HOME/bin"
CONFIG_DIR="$HOME/.config/vdown"
DOWNLOAD_DIR="$HOME/storage/downloads/Video"

echo "=============================================="
echo " TERMUX VIDEO DOWNLOADER v4 - INSTALLER"
echo "=============================================="

pkg update -y
pkg install -y python python-pip ffmpeg curl

python -m pip install -U "yt-dlp[default]"

termux-setup-storage || true

mkdir -p "$BIN_DIR" "$CONFIG_DIR" "$DOWNLOAD_DIR"

cp "$REPO_DIR/vdown" "$BIN_DIR/vdown"
cp "$REPO_DIR/termux-url-opener" "$BIN_DIR/termux-url-opener"
chmod +x "$BIN_DIR/vdown" "$BIN_DIR/termux-url-opener"

touch "$HOME/.bashrc"
grep -qxF 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" || \
  echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"

export PATH="$BIN_DIR:$PATH"

# Optional Termux:API package. The companion Termux:API Android app
# must be installed separately if notifications are wanted.
if command -v termux-notification >/dev/null 2>&1; then
  echo "Termux:API detected."
else
  echo "Tip: install Termux:API for download notifications."
fi

echo
echo "=============================================="
echo " V4 CÀI ĐẶT HOÀN TẤT"
echo "=============================================="
echo "Menu:       vdown"
echo "URL nhanh:  vdown \"URL\""
echo "MP3:        vdown --audio \"URL\""
echo "Info:       vdown --info \"URL\""
echo "Thư mục:    $DOWNLOAD_DIR"
echo
echo "Share -> Termux:"
echo "Nếu Termux xuất hiện trong bảng Chia sẻ,"
echo "chọn Termux để gửi URL trực tiếp cho vdown."
echo "=============================================="
