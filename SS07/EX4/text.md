# Phần 1:
| Tiêu chí | >(ghi nối) | >>(ghi đè) |
| --- | --- | --- |
| Lệnh tương đương | Out-file history.txt | Add-content history.txt <br> Out-file -append |
| Cơ chế hoạt động | Mở file ở chế độ truncate <br> (Nếu file đã tồn tại, xóa sạch content cũ và ghi nooin dung mới. Nếu chưa có thì tạo mới) | Mở file chế độ append. <br> Giữ nguyên content cũ và ghi thêm contetn mới vào cuối file. Nếu chưa có thì tạo mới) |
| Rủi ro mất dữ liệu | Cao. ( Gõ nhầm là lose al history đã ghi trước đó, không thể khôi phục nếu không có backup ) | Thấp. ( Chỉ thêm dữ liệu, không đụng dến phần cũ ) |
| Ngữ cảnh sử dụng | Khi cần tạo mới/ ghi đè file cũ mà không cần giữ nội dung | Khi cần giữ nội dung cũ và thêm nội dung mới liên tục |

# Phần 2 : 
*Trong bối cảnh nhật kí ngân hàng* <br>
- Mất dữ liệu không thể phục hồi
  - Nhật ký bảo trì phục vụ truy vết sự cố/ bằng chứng pháp lý. Nếu gõ nhầm > thay vì >> -> toàn bộ dữ liệu bị xóa
  - Ngân hàng thường có quy định lưu log tối thiểu (6m/1y) -> ngân hàng vi phạm quy định, dễ bị phạt/ bất lợi khi có sự cố pháp lý
- Một số hậu quả dây chuyền trong hệ thống quản lí thông tin :
  - On-call engineer không thấy lịch sự-> khi có sự cố dễ phán đoán sai
  - Không biết được ai sửa những gì, khi nào -> không kiểm soát được hệ thống
  - Log bị ghi đè khi log khác đang ghi -> mất cả dữ liệu real-time 
