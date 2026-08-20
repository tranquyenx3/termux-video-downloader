# Termux Video Downloader v4

Downloader cho Termux dùng yt-dlp + FFmpeg.

## V4 có gì mới?

- Tải URL trực tiếp: `vdown "URL"`
- Clipboard
- Share flow qua `termux-url-opener` nếu Termux/Android hiện Termux như một đích chia sẻ
- Thông báo khi tải xong nếu Termux:API được cài
- Lịch sử tải
- Tự chia thư mục theo nguồn
- Retry mạng
- 4K / 2K / 1080p / 720p / 480p
- MP3
- Thumbnail
- Batch URL
- Info + danh sách format
- Không cần root

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

Sau khi `install.sh` đã có trên branch `main`:

```bash
curl -fsSL https://raw.githubusercontent.com/tranquyenx3/termux-video-downloader/main/install.sh | bash
```

## Share từ TikTok/Douyin

1. Cài Termux.
2. Cài Termux:API nếu muốn thông báo.
3. Trong TikTok/Douyin bấm Chia sẻ.
4. Nếu Android/Termux hiện Termux trong danh sách đích chia sẻ, chọn nó.
5. `termux-url-opener` nhận URL và gọi `vdown`.

Nếu Termux không xuất hiện trong bảng Chia sẻ, dùng Clipboard trong menu VDown. Hành vi Share phụ thuộc phiên bản Termux và Android.

## Lệnh nhanh

```bash
vdown "URL"
vdown --audio "URL"
vdown --info "URL"
```

## Batch

Tạo `~/urls.txt`, mỗi dòng một URL:

```text
https://example.com/video1
https://example.com/video2
```

Chọn `4. Tải hàng loạt`.

## Thông báo

`termux-notification` là tùy chọn. Cần ứng dụng Termux:API tương thích và gói `termux-api` nếu muốn dùng.

## Thư mục

```text
Download/Video/
├── TikTok-Douyin/
├── YouTube/
├── Facebook/
├── Instagram/
└── Other/
```

## Watermark

VDown không xóa watermark khỏi video. Chỉ tải được bản không watermark khi nguồn cung cấp bản đó. Hãy chỉ tải nội dung bạn có quyền sử dụng và tuân thủ điều khoản của nền tảng.

## Cập nhật repository

Nếu đã clone repo:

```bash
cd ~/termux-video-downloader
git pull
bash install.sh
```

Hoặc chạy:

```bash
bash update.sh
```
