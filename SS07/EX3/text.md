# Phần 1: Pipeline 3 bước
```text
Bước 1: Đọc file
|
| stdout : hiện log (string)
|
Bước 2: Lọc chữ
|
| stdout: các dòng khớp TIMEOUT (matchinfor)
|
Bước 3: Đếm
|
| stdin: đối tượng measureinfor, chúa thuộc tính Lines
|
.Lines là số duy nhất
```
# Phần 2: lệnh
```powershell
(get-content .\access.log | select-string -pattern "TIMEOUT" | Measure-object -Line).Lines
