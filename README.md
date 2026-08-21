# Termux Video Downloader V4.7 AUTO MEDIA

Downloader CLI cho Termux dựa trên yt-dlp + FFmpeg.

## Tính năng

- Auto-detect URL và extractor.
- Video: best, 2160p, 1440p, 1080p, 720p, 480p.
- Audio: MP3 320/256/192/128, M4A, OPUS, FLAC, WAV.
- Video → Video: MP4, MKV, WEBM; preset CRF.
- Xem `yt-dlp -F` để chọn format thực tế của từng URL.
- Thumbnail JPG.
- Lịch sử.
- Share mode bằng `vdown-share`.
- Tự tạo thư mục trong `Download/Termux Video Downloader`.

## Cài

```bash
cd ~/storage/downloads
unzip -o termux-video-downloader-v4.7-auto-media.zip -d ~/v47
cd ~/v47
bash install.sh
vdown
```

## Share

Nếu ứng dụng chia sẻ gửi URL như đối số:

```bash
vdown-share "https://..."
```

Có thể tạo shortcut/Task cho Termux:Widget hoặc dùng app automation để gọi `vdown-share "$URL"`.

## Lưu ý

"Đầu ra 4K/320 kbps" chỉ đạt được nếu nguồn cung cấp dữ liệu đủ chất lượng. Không thể tạo thêm chi tiết thật bằng cách chuyển một file thấp chất lượng sang định dạng/độ phân giải cao.

Nguồn riêng tư, DRM, nội dung cần đăng nhập hoặc bị giới hạn bởi nền tảng có thể không tải được. Chỉ tải nội dung mà bạn có quyền sử dụng.

yt-dlp hỗ trợ rất nhiều website và có generic extractor, nhưng website có thể thay đổi nên không thể đảm bảo mọi URL luôn hoạt động.
