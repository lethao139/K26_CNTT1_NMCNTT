# P1: Phân tích bài toán: Tại sao Markdown giúp AI xử lý nhanh hơn
- Tokenization :
  - HTML: chứa nhiều thẻ mở và đóng ( <head>, </div>,etc.) AI sẽ tốn nhiều token hơn để xử lý từng thẻ vd như: <, /, div, >
  - Markdown: ít ký tự hơn (vd : ##)
- Productivity AI:
  - Tiết kiệm token, chi phí: dùng ít token hơn -> giảm API -> giảm chi phí vận hành
  - Latency: Ít thẻ HTML -> ít dữ liệu nhiễu -> AI cacth semantic meaning faster -> trả request nhanh hơn
  - Tối ưu ngữ cảnh : ít token -> nhiều chỗ trống cho hệ thống lấy tài liệu nền hơn -> thông tin chi tiết hơn

# P2: So sánh, đánh giá 

## So sánh:
| Tiêu chí |	Markdown	| HTML| 
| --- | --- | --- |
| Cú pháp | `**Văn bản**` (Ngắn gọn) |	`<strong>Văn bản</strong>` (Dài dòng, nhiều ký tự thừa) |
| Số lượng Token tiêu thụ |	Thấp (Tiết kiệm chi phí API)	| Cao (Tốn kém chi phí do thẻ tag) |
| Tốc độ xử lý của AI	| Nhanh (Ít nhiễu, tập trung vào ngữ nghĩa)	| Chậm hơn (AI mất thời gian parse cấu trúc thẻ) |
| Khả năng đọc của con người |	Rất cao (Dễ đọc ngay cả khi chưa render) |	Thấp (Rối mắt bởi các thẻ <div>, <span>) |
| Độ phức tạp khi tạo |	Dễ dàng (Chỉ cần gõ văn bản + ký tự đặc biệt) |	Phức tạp (Dễ sai sót cú pháp đóng/mở thẻ) |
| Khả năng tương thích |	Tốt (Hầu hết các nền tảng chat/markdown đều hỗ trợ)	| Cần trình duyệt hoặc giao diện render phức tạp |

 ## Giải pháp : Dùng Markdown
 - Vì nông dân dễ hiểu kể cả khi chưa  render
 - Tiết kiệm 30-50% token so với HTML-> giảm cost vận hành
 - Dễ kiểm soát, ra kết quả nhanh, chính xác hơn khi cho vào AI 
 

