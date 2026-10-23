# BÀI LÀM – THI THỬ HACKATHON 01

- **Mã đề:** Thi thử
- **Họ tên:** Le Thao
- **Lớp:** CNTT1
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** win

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell
pwd
ls -a
mv nhap_hang.txt docs/
mv logo_van_phong_pham.png media/
cp media/logo_van_phong_pham.png backup/
rm temp_131.tmp
cd logs
get-childitem - forece -recurse
cd ..
```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```bash
 Directory: C:\Users\PC\Downloads\starter-kit\van_phong_pham_website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/23/2026   9:52 AM                backup
d-r---        10/23/2026   9:48 AM                data
d-r---        10/23/2026   9:51 AM                docs
d-r---        10/23/2026  10:28 AM                logs
d-r---        10/23/2026   9:51 AM                media
-a----        10/19/2026   9:41 AM             78 .env
-a----        10/23/2026  10:40 AM           6170 bai_lam.md


    Directory: C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\backup


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.png


    Directory: C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6105 don_bang_hang_thang_10.xlsx


    Directory: C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/23/2026   9:44 AM                data
-a----        10/19/2026   9:41 AM             51 nhap_hang.txt


    Directory:
    C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\docs\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/23/2026   9:44 AM                media


    Directory:
    C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\docs\data\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/23/2026   9:44 AM                logs


    Directory: C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\docs\da
    ta\media\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/23/2026   9:44 AM                backup


    Directory: C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/23/2026  10:29 AM            668 auto_report.ps1
-a----        10/23/2026  10:01 AM            668 daily_report.txt
-a----        10/19/2026   9:41 AM           1053 shop.log
-a----        10/23/2026  10:19 AM            400 tong_hop.txt


    Directory: C:\Users\PC\Downloads\starter-kit\van_phong_pham_website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/19/2026   9:41 AM           6053 logo_van_phong_pham.png
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
gc logs\shop.log | select-String "ERROR" | out-file logs\daily_report.txt
gc logs\daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [x] Heading 1: tên dự án
- [x] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [x] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [x] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [x] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [x] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

```shell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\auto_warning.ps1
 gc logs/daily_report.txt
```

### Nội dung file logs/auto_report.txt

```text
=== BAO CAO LOI ===
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:39:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:42:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 09:12:28 [ERROR] Thanh toan bi tu choi
```

## 4.6. Đếm số dòng lỗi

### Lệnh

```shell
 gc logs\shop.log |
>> select-string "ERROR" |
>> Measure-Object
```

### Kết quả đếm (Windows: giá trị Count; macOS: con số in ra)

```text
Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :
```

## 4.7. Báo cáo tổng hợp

### Các lệnh đã chạy

```shell
"=== TONG HOP LOG ===" > logs/tong_hop.txt
gc "WARNING" logs/shop.log >> logs/tong_hop.txt
gc "ERROR" logs/shop.log | Measure-Object | out-file logs/tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```text
=== TONG HOP LOG ===
2025-10-28 08:51:28 [WARNING] Thoi gian tai trang cham
2025-10-28 08:54:28 [WARNING] Anh san pham dung luong lon
2025-10-28 08:57:28 [WARNING] Thoi gian tai trang cham

Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/don_ban_thang_10.xlsx`, không cần ghi vào đây.
