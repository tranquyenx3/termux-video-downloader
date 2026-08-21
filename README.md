# Termux Video Downloader v4.5 – Share Mode

- Menu tiếng Việt.
- Nhiều nguồn qua yt-dlp.
- Thư mục: `Download/Termux Video Downloader/`.
- Share Mode: chia sẻ URL từ TikTok/Facebook/YouTube… vào Termux.
- URL được đưa vào hàng đợi, worker chạy nền và session share thoát ngay.
- Nhiều URL chia sẻ liên tiếp được xử lý tuần tự.
- Có thông báo Android khi nhận URL và khi tải xong.

Cài đặt:
```bash
termux-setup-storage
bash install.sh
vdown
```

## Share
Trong ứng dụng mạng xã hội chọn **Chia sẻ → Termux**. Không cần nhập URL thủ công.

> Lưu ý: Termux vẫn có thể tạo một session/activity rất ngắn khi Android gọi `termux-url-opener`; VDown không thể điều khiển giao diện của Termux. Script thoát ngay và tải chạy nền để không giữ hàng loạt tab mở.
