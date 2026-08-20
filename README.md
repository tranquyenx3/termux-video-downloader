# Termux Video Downloader v3

Downloader Termux dùng yt-dlp + FFmpeg.

## Tính năng
- TikTok / Douyin và các nguồn yt-dlp hỗ trợ
- YouTube / Facebook / Instagram
- 4K / 2K / 1080p / 720p / 480p
- MP3, thumbnail
- Batch URL
- Clipboard
- `vdown "URL"` tải trực tiếp
- Tự phân loại thư mục
- Retry và progress
- Không cần root
- `termux-url-opener` để nhận URL từ share flow nếu bản Termux/Android hỗ trợ

## Cài đặt

```bash
pkg install git -y
git clone https://github.com/tranquyenx3/termux-video-downloader.git
cd termux-video-downloader
bash install.sh
source ~/.bashrc
vdown
```

## Cài một dòng

```bash
curl -fsSL https://raw.githubusercontent.com/tranquyenx3/termux-video-downloader/main/install.sh | bash
```

## Lệnh nhanh

```bash
vdown "URL"
vdown --audio "URL"
vdown --info "URL"
```

## Thư mục

`Download/Video/TikTok-Douyin/`, `YouTube/`, `Facebook/`, `Instagram/`, `Other/`.

## Watermark

Tool không xóa watermark khỏi video. Chỉ tải bản không watermark khi nguồn cung cấp bản đó. Hãy tuân thủ quyền sử dụng và điều khoản nền tảng.

yt-dlp có hướng dẫn cài đặt chính thức cho Android/Termux.
