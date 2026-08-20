#!/data/data/com.termux/files/usr/bin/bash
set -e

echo "========================================"
echo " TERMUX VIDEO DOWNLOADER - INSTALLER"
echo "========================================"

pkg update -y
pkg install -y python ffmpeg git

python -m pip install -U "yt-dlp[default]"

termux-setup-storage || true

mkdir -p "$HOME/bin"
mkdir -p "$HOME/storage/downloads/Video"

cp ./vdown "$HOME/bin/vdown"
chmod +x "$HOME/bin/vdown"

if ! grep -q 'export PATH="$HOME/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null; then
    echo 'export PATH="$HOME/bin:$PATH"' >> "$HOME/.bashrc"
fi

export PATH="$HOME/bin:$PATH"

echo
echo "========================================"
echo " CÀI ĐẶT HOÀN TẤT"
echo "========================================"
echo "Chạy:"
echo "  vdown"
echo
echo "Thư mục tải:"
echo "  ~/storage/downloads/Video"
echo
echo "Nếu 'vdown' chưa được nhận, chạy:"
echo "  source ~/.bashrc"
echo "========================================"
