# P1: 
File log (text)
|
|
Select-string -pattern 'TIMEOUT'
| đọc file + lọc các dòng chứa TIMEOUT
| Trả object matchinfo 
Where-object { $_.Line -notmatch 'Not TIMEOUT' }
| Bỏ các object chứa ""
