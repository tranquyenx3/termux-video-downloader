# Termux Video Downloader v4.2 CLEAN

Bản sửa giao diện cho Termux.

### Đã sửa

- Không còn ký tự `�` do font/encoding.
- Không còn hiện chữ `\033[...m`.
- Khung dùng ASCII `+---+`, tương thích Termux tốt hơn.
- Màu ANSI dùng cú pháp Bash `$'\033...'`.
- Giữ các chức năng tải video, MP3, thumbnail, batch, info, lịch sử, cập nhật và kiểm tra hệ thống.
- Không cần root.

### Cập nhật trên Termux

Nếu repo đã cập nhật:

```bash
cd ~/termux-video-downloader
git pull
cp vdown ~/bin/vdown
chmod +x ~/bin/vdown
vdown
```

Nếu chỉ có file `vdown` mới:

```bash
cp vdown ~/bin/vdown
chmod +x ~/bin/vdown
vdown
```

Tool không xóa watermark. Chỉ tải bản không watermark khi nguồn cung cấp bản đó.
