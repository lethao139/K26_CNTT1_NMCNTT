# P1:
- Cat không tồn tại trên CMD
- File 800MB khá lớn nếu dùng stream chạy nội dung ra GUI (notepad) -> treo máy vì phải chạy nhiều dữ liệu (not responding)
# P2:
```powershell
cd server_log_8000MB.log
gc server_log_8000MB.log | more
<# cat server_log_8000MB.log | more #>
gc server_log_8000MB.log -tail 10

