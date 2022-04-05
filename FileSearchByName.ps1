$currentTime = Get-Date -format "dd-MMM-yyyy HH:mm:ss"
$currentDate = Get-Date -format "yyy-MMM-dd"
$path =  "C:\Temp\Logs\log_ps_$currentDate.txt"

Start-Transcript -Path $path -Append

Write-Output "SCRIPT: SEARCH FOR FILES"

Write-Output "START: "$currentTime

#Continue on minor errors:
#Get-Childitem –Path C:\ -Recurse -ErrorAction SilentlyContinue

#Use command to show only the documents that I can access or maybe even all the files that I put the letters, HSG, in
#Get-Childitem –Path C:\ -Include *HSG* -Recurse -ErrorAction SilentlyContinue

#Show only files by using PowerShell. This was introduced in version 3 of PowerShell.
#Get-Childitem –Path C:\ -Include *HSG* -File -Recurse -ErrorAction SilentlyContinue

#Use the the -Exclude parameter to say, “Don’t show me any TMP, MP3, or JPG files:

Get-Childitem –Path C:\ -Include *resume*  -Exclude *.JPG,*.MP3,*.TMP,*.E* -File -Recurse -ErrorAction SilentlyContinue

Stop-Transcript