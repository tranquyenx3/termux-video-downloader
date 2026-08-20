# Termux Video Downloader

Downloader CLI cho Termux, dùng yt-dlp + FFmpeg.

## Tính năng

- TikTok / Douyin và các nguồn được yt-dlp hỗ trợ
- Chọn chất lượng: tốt nhất, 4K, 1440p, 1080p, 720p, 480p
- Tải audio MP3
- Tải thumbnail
- Tải hàng loạt từ file URL
- Xem format mà nguồn cung cấp
- Cập nhật yt-dlp
- Lưu vào `Download/Video`
- Không yêu cầu root

> Video không watermark chỉ có thể tải nếu nguồn/stream cung cấp bản không watermark. Tool không dùng để xóa watermark khỏi video.

## Cài đặt trên Termux

```bash
pkg install git -y
git clone https://github.com/USERNAME/termux-video-downloader.git
cd termux-video-downloader
bash install.sh
```

Sau đó:

```bash
vdown
```

## Clipboard

Muốn dùng chức năng lấy URL từ clipboard, cài Termux:API từ cùng nguồn phân phối với Termux và cài gói:

```bash
pkg install termux-api
```

## Gỡ cài đặt

Trong thư mục repository:

```bash
bash uninstall.sh
```

## Cập nhật

```bash
cd ~/termux-video-downloader
git pull
bash install.sh
```

## Lưu ý

Chỉ tải nội dung bạn có quyền tải/sử dụng và tuân thủ điều khoản của nền tảng.
