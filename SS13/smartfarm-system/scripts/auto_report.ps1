$report = "..\backup\bao-cao-su-co.txt"
$log = "..\data\log-he-thong.log"

Write-Output "BAO CAO SU CO HE THONG" > $report
Write-Output "THOI GIAN TAO BAO CAO: $(Get-Date)" >> $report
Write-Output "==============================" >> $report

Get-Content $log |
Select-String "CRITICAL|ERROR" >> $report

$count = Get-Content $log |
Select-String "CRITICAL|ERROR" |
Measure-Object |
Select-Object -ExpandProperty Count

Write-Output "" >> $report
Write-Output "TONG SO SU CO: $count" >> $report

Write-Output "Hoan thanh tao bao cao!"