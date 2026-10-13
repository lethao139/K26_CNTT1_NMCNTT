# Phần 1:
- File 500MB -> file log lớn
  - dùng `cat server_log_500MB.log` -> terminal chạy content ra dễ bị treo
  - tương tự với notepad cần nhập vào RAM để chạy -> dễ tràn RAM cà treo notepad (not responding)
-> nên phân luồng/ lấy phần cần
# Phần 2:
```Powershell
Get-Content .\server_log_500MB.log | more
Get-content .\server_log_500MB.log -tail 10
