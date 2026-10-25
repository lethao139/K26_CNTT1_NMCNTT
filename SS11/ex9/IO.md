1
| Cột cần điền | Lookup_value | Table_array | Col_index_num |
| :--- | :--- | :--- | :--- |
| D (Tên TG) | TRIM(C2) | DanhMucTacGia!$A$2:$E$100 | 2 |
| E (Phòng) | TRIM(C2) | DanhMucTacGia!$A$2:$E$100 | 4 |
| F (Thù lao) | TRIM(C2) | DanhMucTacGia!$A$2:$E$100 | 5 |
2. Chiến lược xử lý 3 bẫy

Bẫy 1 (Khoảng trắng): Dùng hàm TRIM() bọc ngoài Lookup_value: TRIM(C2).

Bẫy 2 (Lỗi #N/A): Bọc toàn bộ công thức bằng IFERROR(..., "Chưa cập nhật").

Bẫy 3 (Trôi bảng): Dùng dấu $ cố định vùng tra cứu: $A$2:$E$100.

3. Các bước thực hiện

Bước 1: Viết công thức hoàn chỉnh cho ô D2 (kết hợp IFERROR, VLOOKUP, TRIM).

Bước 2: Kéo công thức từ D2 xuống hết danh sách.

Bước 3: Copy công thức sang E2, F2. Chỉ sửa số thứ tự cột (Col_index_num) thành 4 và 5. Kéo xuống.

PHẦN 2: TRIỂN KHAI & CHỐNG LỖI
4. Công thức ô D2 (Tên Tác Giả)

excel
=IFERROR(VLOOKUP(TRIM(C2), DanhMucTacGia!$A$2:$E$100, 2, FALSE), "Chưa cập nhật")
5. Công thức ô E2 và F2

E2 (Phòng): =IFERROR(VLOOKUP(TRIM(C2), DanhMucTacGia!$A$2:$E$100, 4, FALSE), "Chưa cập nhật")

F2 (Thù lao): =IFERROR(VLOOKUP(TRIM(C2), DanhMucTacGia!$A$2:$E$100, 5, FALSE), "Chưa cập nhật")

Giải thích: Vì Lookup_value và Table_array giống hệt nhau, chỉ cần thay đổi tham số thứ 3 (Col_index_num) để trỏ đúng cột cần lấy (Tên cột 2, Phòng cột 4, Thù lao cột 5).

6. Hiện tượng bỏ dấu $

Nếu D2 có công thức không $: =VLOOKUP(TRIM(C2), DanhMucTacGia!A2:E100, 2, FALSE)

Khi kéo xuống D5, vùng tra cứu sẽ tự động trôi xuống thành: DanhMucTacGia!A5:E103.

Hậu quả: Mất dữ liệu các dòng đầu (TG001, TG002...), dẫn đến tra cứu sai hoặc lỗi #N/A. Dấu $ giúp "ghim" cố định vùng dữ liệu.
