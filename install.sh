#!/data/data/com.termux/files/usr/bin/bash
set -e
APP="$HOME/.vdown"
BIN="$PREFIX/bin"
mkdir -p "$APP" "$HOME/bin"

echo "== VDown V4.7 AUTO MEDIA =="
echo "[1/6] Cập nhật package..."
pkg update -y >/dev/null 2>&1 || true

echo "[2/6] Cài Python + FFmpeg..."
pkg install -y python ffmpeg unzip >/dev/null

echo "[3/6] Cấp quyền bộ nhớ..."
termux-setup-storage >/dev/null 2>&1 || true

echo "[4/6] Cài/cập nhật yt-dlp..."
python -m pip install -U yt-dlp

echo "[5/6] Cài VDown..."
cp -f "$(dirname "$0")/vdown" "$APP/vdown"
cp -f "$(dirname "$0")/share/vdown-share" "$APP/vdown-share"
chmod +x "$APP/vdown" "$APP/vdown-share"
ln -sf "$APP/vdown" "$BIN/vdown"
ln -sf "$APP/vdown-share" "$BIN/vdown-share"

mkdir -p "$HOME/storage/shared/Download/Termux Video Downloader"/{Video,Audio,Thumbnail,Converted,History}

echo "[6/6] Hoàn tất."
echo
echo "Chạy: vdown"
echo "Share URL trực tiếp: vdown-share 'URL'"
echo "Thư mục: ~/storage/shared/Download/Termux Video Downloader"
