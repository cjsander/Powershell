START-TRANSCRIPT "C:\src\Views.log"

$WinService = Get-ChildItem -File -Recurse -Path "Views" | where length -gt '0'
$WinService | Export-Csv -path "C:\Web\Views\views_files.csv" 

STOP-TRANSCRIPT
