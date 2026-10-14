# Phần 1:
| Tiêu chí | >(ghi nối) | >>(ghi đè) |
| --- | --- | --- |
| Lệnh tương đương | Out-file history.txt | Add-content history.txt <br> Out-file -append |
| Cơ chế hoạt động | Mở file ở chế độ truncate <br> (Nếu file đã tồn tại, xóa sạch content cũ và ghi nooin dung mới. Nếu chưa có thì tạo mới) | Mở file chế độ append. <br> Giữ nguyên content cũ và ghi thêm contetn mới vào cuối file. Nếu chưa có thì tạo mới) |
| Rủi ro mất dữ liệu | Cao. ( Gõ nhầm là lose al history đã ghi trước đó, không thể khôi phục nếu không có backup ) | Thấp. ( Chỉ thêm dữ liệu, không đụng dến phần cũ ) |
| Ngữ cảnh sử dụng | Khi cần tạo mới/ ghi đè file cũ mà không cần giữ nội dung | Khi cần giữ nội dung cũ và thêm nội dung mới liên tục |
| Encoding | Nếu mở nhầm công cụ đọc file không hỗ trợ UTF-16, nội dung có thể hiển thị sai ký tự. | -  cho phép chỉ định encoding rõ ràng, ví dụ `Add-Content -Path daily_report.txt -Value $ket_qua -Encoding utf8` |
# Phần 2 : 
```powershell
Get-Content .\server.log |
    Select-String "ERROR" |
    Where-Object { $_.Line -notmatch "NOT ERROR" } |
    Out-File -FilePath .\daily_report.txt -Append -Encoding utf8
