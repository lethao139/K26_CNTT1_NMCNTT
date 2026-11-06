# phần 1 googling
1. câu văn nói chứa từ cảm thán, thiếu từ khóa kỹ thuật gây nhiễu kết quả
2. bóc tách
- tên pm/hđh: node.js / windows 11
- lỗi: 'npm' is not recognized as an internal or external command...
- thao tác: npm -v
3. ba câu lệnh
- site:stackoverflow.com "npm is not recognized" windows 11
- "npm is not recognized as an internal or external command"
- npm is not recognized windows 11 -mac -linux

# phần 2 stackoverflow
1. so sánh
- vote/tích: a (accepted +186) / b (+2, không tích)
- thời gian: a (2 năm) / b (9 năm)
- tags: a (windows) / b (windows-xp)
2. chọn câu a. câu b là bẫy vì hướng dẫn cho win xp lỗi thời, xóa driver mạng không liên quan
3. 30s đọc lướt: accepted answer -> upvote -> thời gian -> tags -> khối code

# phần 3 ai
1. prompt
- [context]: win 11, đã thêm path nodejs, mở lại terminal vẫn lỗi
- [error]: 'npm' is not recognized...
- [instruction]: giải thích nguyên nhân và cách sửa an toàn
2. đánh giá: cực kỳ nguy hiểm. lệnh xóa system32 sẽ làm sập windows
3. phản hồi: lệnh này có làm hỏng máy không? đưa ra cách sửa an toàn hơn

# phần 4 bug report
1. tin nhắn kém: thầy ơi máy em gõ npm bị lỗi, sửa sao ạ?
2. bug report
- context: win 11, vs code
- expected: npm -v chạy được
- actual: báo lỗi 'npm' is not recognized
- log & screenshot: đã thử thêm path, vẫn lỗi kèm ảnh
3. phím tắt: win + shift + s. lưu ý: che thông tin nhạy cảm như api key
