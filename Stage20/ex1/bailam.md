# phần 1 phân tích url
- ký tự lạ là chữ ú trong githúb
- đây là ký tự unicode chữ u có dấu sắc không phải chữ u thường
- kẻ tấn công dùng kỹ thuật homograph tấn công đồng hình tạo tên miền giả mạo trông giống hệt tên miền thật
- tên miền thật bị mã hóa punycode là xn--githb-bva.com

# phần 2 quy trình kiểm tra url
- kiểm tra bằng mắt: rà soát kỹ từng ký tự trong tên miền chính tìm các dấu lạ
- kiểm tra bằng công cụ:
+ dùng password manager như bitwarden nếu không tự động điền nghĩa là url giả
+ dán url vào virustotal để quét
+ hover chuột vào link để xem url thật ở góc dưới trình duyệt

code python kiểm tra url
```python
def check_url(url):
    for char in url:
        if ord(char) > 127:
            print(f"phat hien ky tu la: {char}")
            return False
    print("url an toan")
    return True

check_url("https://githúb.com/login")
