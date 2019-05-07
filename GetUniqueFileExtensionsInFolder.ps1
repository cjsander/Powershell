START-TRANSCRIPT "C:\fileextensions.log"
$WinService = Get-ChildItem -Path C:\path\foler r -Recurse | Where-Object {!$_.PSIsContainer -AND $_.Extension} | Group-Object {$_.Extension} -NoElement
$WinService | Export-Csv -Path "C:\file_types.csv"
STOP-TRANSCRIPT
