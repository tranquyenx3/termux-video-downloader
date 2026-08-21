# Termux Video Downloader v4.5.1 — Share Mode

Bản sửa cho Share -> Termux: URL được đưa vào một hàng đợi chung, chỉ một worker tải tuần tự. Session nhận URL không mở menu tương tác.

## Cài đặt
```bash
termux-setup-storage
cd ~/storage/downloads
unzip -o termux-video-downloader-v4.5.1-share-mode.zip -d ~/v451
cd ~/v451
bash install.sh
```

## Thư mục lưu
`/storage/emulated/0/Download/Termux Video Downloader/`

## Share
Trong TikTok/Facebook/YouTube: Share -> Termux. VDown tự nhận URL và đưa vào queue.

Xem queue:
```bash
vdown --share-status
```

Log worker:
```bash
tail -f ~/.config/vdown/share-worker.log
```

Lưu ý: Android/Termux vẫn có thể tạo một session UI khi nhận Intent Share; script nhận URL thoát ngay, còn tải dùng worker chung.
