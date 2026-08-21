#!/data/data/com.termux/files/usr/bin/bash
set -e
REPO_DIR="$(cd "$(dirname "$0")" && pwd)"
BIN_DIR="$HOME/bin"

pkg update -y
pkg install -y python python-pip ffmpeg
python -m pip install -U "yt-dlp[default]"
python -m pip install -U curl_cffi || true
termux-setup-storage || true

mkdir -p "$BIN_DIR" "$HOME/.termux" "$HOME/.config/vdown" "$HOME/storage/downloads/Termux Video Downloader"
cp "$REPO_DIR/vdown" "$BIN_DIR/vdown"
cp "$REPO_DIR/termux-url-opener" "$BIN_DIR/termux-url-opener"
cp "$REPO_DIR/termux-url-opener" "$HOME/.termux/termux-url-opener"
chmod +x "$BIN_DIR/vdown" "$BIN_DIR/termux-url-opener" "$HOME/.termux/termux-url-opener"

touch "$HOME/.bashrc"
grep -qxF 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" || echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
export PATH="$BIN_DIR:$PATH"

# Remove stale worker lock only if no downloader process is using it.
if [ -d "$HOME/.config/vdown/share.worker.lock" ]; then
  if ! pgrep -f 'vdown --share-worker' >/dev/null 2>&1; then
    rmdir "$HOME/.config/vdown/share.worker.lock" 2>/dev/null || true
  fi
fi

echo
echo "=========================================="
echo " VDown 4.5.1 SHARE MODE installed"
echo " Share -> Termux -> tự đưa vào hàng đợi"
echo " Run: vdown"
echo "=========================================="
