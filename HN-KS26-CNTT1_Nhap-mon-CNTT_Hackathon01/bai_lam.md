# BÀI LÀM – HACKATHON 01

- **Mã đề:** 16
- **Họ tên:** Lê Minh Thảo 
- **Lớp:** CNTT1
- **Link repository:** 
- **Hệ điều hành (Windows/macOS):** Win

## 4.2. Thao tác máy tính cơ bản bằng CLI

### Các lệnh đã chạy

```shell

pwd
ls -force

mv quy_dinh_bao_hanh.txt docs/
mv logo_sua_may_tinh.png media/

cp media/logo_sua_may_tinh.png backup/

rm temp_241.tmp

cd logs
ls
cd ..

```

### Kết quả liệt kê toàn bộ dự án (Windows: Get-ChildItem -Recurse -Force; macOS: ls -aR)

```text
PS C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website> Get-ChildItem -Recurse -Force


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/28/2026   7:46 AM                backup
d-r---        10/28/2026   7:48 AM                data
d-r---        10/28/2026   7:57 AM                docs
d-r---        10/28/2026   7:49 AM                logs
d-r---        10/28/2026   7:58 AM                media
-a----        10/27/2026   1:32 AM             72 .env
-a----        10/27/2026   1:32 AM           2225 bai_lam.md


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6101 phieu_sua_thang_6.xlsx


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\docs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/28/2026   7:45 AM                media
-a----        10/27/2026   1:32 AM             61 quy_dinh_bao_hanh.txt


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\docs\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/28/2026   7:45 AM                data


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\docs\media\data


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/28/2026   7:45 AM                logs


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\docs\media\data\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
d-r---        10/28/2026   7:45 AM                backup


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\logs


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           1069 repair.log


    Directory: C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\media


Mode                 LastWriteTime         Length Name
----                 -------------         ------ ----
-a----        10/27/2026   1:32 AM           6767 logo_sua_may_tinh.png
```

## 4.3. Lọc log thủ công

### Lệnh đã chạy

```shell
cd logs
ni daily_report.txt
gc repair.log | select-string "ERROR" >>daily_report.txt
gc daily_report.txt

```

### 2 dòng lỗi đầu tiên trong daily_report.txt

```text

PS C:\Users\PC\Downloads\starter-kit-baithi\sua-may-tinh-website\logs> gc daily_report.txt

2026-06-28 08:57:31 [ERROR] Thanh toan bi tu choi
2026-06-28 09:01:31 [ERROR] Thanh toan bi tu choi

```

## 4.4. Thao tác với tài liệu Markdown (README.md)

> README.md được chấm trực tiếp trên file `README.md` ở gốc dự án. Đánh dấu `[x]` vào các mục đã làm để tự kiểm tra.

- [ ] Heading 1: tên dự án
- [ ] Mô tả ngắn có cả **in đậm** và *in nghiêng*
- [ ] Bảng `Thư mục | Nội dung`, ít nhất 3 dòng dữ liệu
- [ ] Code block chứa lệnh PowerShell/Terminal liệt kê nội dung dự án
- [ ] Task list ít nhất 2 công việc, có ít nhất 1 mục đã hoàn thành
- [ ] Blockquote nhắc không upload `.env`

## 4.5. Chạy script auto_report (.ps1 hoặc .sh)

### Lệnh chạy (Windows: nếu dùng Phụ lục 2 thì ghi cả 2 lệnh)

```shell
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
.\auto_warning.ps1
 gc logs/daily_report.txt
```

### Kết quả hiển thị

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
gc repair.log | Select-String "ERROR" | Measure-Object >> bai_lam.md
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
gc "ERROR" logs/shop.log | Measure-Object | out-file logs/tong_hop.txt
```

### Nội dung file logs/tong_hop.txt

```text

=== BAO CAO LOI ===
2025-10-28 08:24:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:30:28 [ERROR] Thanh toan bi tu choi
2025-10-28 08:33:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:39:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 08:42:28 [ERROR] Ket noi kho du lieu that bai
2025-10-28 09:12:28 [ERROR] Thanh toan bi tu choi

Count    : 6
Average  :
Sum      :
Maximum  :
Minimum  :
Property :

```

## 4.8. Excel

> Phần Excel được chấm trực tiếp trên file `data/phieu_sua_thang_6.xlsx`, không cần ghi vào đây.
