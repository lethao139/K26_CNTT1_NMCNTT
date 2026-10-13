# Structure Script :
| Unit | Role |
| --- | --- |
| Comment-based help | Mô tả mục dích, tác giả, cách dùng, ví dụ |
| Khai báo biến | Đường dẫn log, file báo cáo, pattern cần lọc, ngày giờ |
| Header hiển thị | Dùng `Write- host` in tiêu đề nổi bật ra Terminal |
| Main logic | Tạo tiêu đề -> đọc log-> lọc lỗi -> add thêm vào file |
| Footer / Notificattion | In kết quả thổng kết: số dòng lỗi, đường dẫn file báo cáo |
# Product ( Lệnh mô phỏng trong product )
- Khai báo biến :
  ```bash
  $LogFile    = ".\access.log"
  $ReportFile = ".\report.txt"
  $Pattern    = "404"
  $Today      = Get-Date -Format "yyyy-MM-dd"
  $Now        = Get-Date -Format "yyyy-MM-dd HH:mm:ss"
  ```
- Header
  ```bash
  Write-Host "==========================================" -ForegroundColor Cyan
  Write-Host "   AUTO LOG REPORT - MONITORPRO SYSTEM    " -ForegroundColor Cyan
  Write-Host "==========================================" -ForegroundColor Cyan
  Write-Host " Thoi gian chay : $Now" -ForegroundColor Yellow
  Write-Host " File log       : $LogFile" -ForegroundColor Yellow
  Write-Host " File bao cao   : $ReportFile" -ForegroundColor Yellow
  Write-Host " Pattern loc    : $Pattern" -ForegroundColor Yellow
  Write-Host "------------------------------------------" -ForegroundColor Cyan
  ```
- Ktra file log 
  ```bash
  if (-not (Test-Path $LogFile)) {
    Write-Host "[LOI] Khong tim thay file log: $LogFile" -ForegroundColor Red
    return
  }
- Tạo tiêu đề mới trong báo cáo
  ```bash
  $Header = "=== LOG REPORT DATE [$Today] ==="
  Add-Content -Path $ReportFile -Value $Header
  Write-Host "[OK] Da tao tieu de bao cao cho ngay $Today" -ForegroundColor Green
  ```
- Lọc lỗi 404
  ```bash
  Write-Host "[...] Dang doc va loc log..." -ForegroundColor Yellow
  $ErrorLines = Select-String -Path $LogFile -Pattern $Pattern

  if ($ErrorLines.Count -eq 0) {
    Add-Content -Path $ReportFile -Value "Khong co loi $Pattern trong ngay."
    Write-Host "[OK] Khong co loi $Pattern nao." -ForegroundColor Green
  }
  else {
  <!-- add thêm vào báo cáo -->
  $ErrorLines | ForEach-Object {
        Add-Content -Path $ReportFile -Value $_.Line
    }
    Write-Host "[OK] Da ghi $($ErrorLines.Count) dong loi vao bao cao." -ForegroundColor Green
   }
- Footer, Noti
  ```bash
  Add-Content -Path $ReportFile -Value "=== END OF REPORT [$Now] ==="
  Write-Host "------------------------------------------" -ForegroundColor Cyan
  Write-Host " HOAN TAT! Tong so dong loi: $($ErrorLines.Count)" -ForegroundColor Magenta
  Write-Host " Xem bao cao tai: $ReportFile" -ForegroundColor Magenta
  Write-Host "==========================================" -ForegroundColor Cyan

