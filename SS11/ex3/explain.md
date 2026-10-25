1
- Lookup_value: mã đơn vị cần tra
- Table_array: Vùng dữ liệu của bảng tra
- Col_index_num: Số thứ tự cột cần lấy dữ liệu
- Range_lookup: Tìm kiếm chính xác tuyệt đối/ tương đối

2
- Tên Linh Kiện: =IFERROR(VLOOKUP(B2, Danh_Muc!$A$2:$C$100, 2, FALSE))
- Đơn giá : =IFERROR(VLOOKUP(B2, Danh_Muc!$A$2:$C$100, 3, FALSE))
