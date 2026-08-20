# Termux Video Downloader v4.4 FIXED

Bản sửa lỗi thư mục lưu của V4.4.

## Thư mục lưu video

Video được lưu tại:

`/storage/emulated/0/Download/Termux Video Downloader/`

VDown tự chia thư mục theo nguồn, ví dụ:

- `YouTube/`
- `TikTok-Douyin/`
- `Facebook/`
- `Instagram/`
- `X-Twitter/`
- `Bilibili/`
- `Other/`

## Cài đặt

```bash
termux-setup-storage
bash install.sh
vdown
```

Bản này dùng yt-dlp để tải từ các nguồn mà yt-dlp hỗ trợ. Website có thể thay đổi và một số nguồn, đặc biệt TikTok, có thể tạm thời lỗi extractor.
