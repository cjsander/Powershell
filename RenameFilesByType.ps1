$currentDate = Get-Date -format "F"
$path =  "C:\Temp\Logs\log_ps_$currentDate.txt"

#Set-ExecutionPolicy Unrestricted -Scope CurrentUser

Start-Transcript -Path $path -Append

Write-Output "SCRIPT: SEQUENTIAL RENAME BY FILETYPE"

Write-Output "START: "$currentDate

$TargetPath = "C:\Users\chrys\Desktop\TMP_TJX"
$Prefix = "2023TJX_"
$Files = Get-ChildItem –Path $TargetPath -Exclude *.PDF -File -Recurse -ErrorAction SilentlyContinue
$PadTo = '0'*$Files.Count.ToString().Length
$ID = 1
$Files | ForEach { Rename-Item -LiteralPath $_.fullname -NewName ($prefix + ($id++).tostring($PadTo) + $_.extension) }

$currentDate = Get-Date -format "F"
Write-Output "STOP: "$currentDate

Stop-Transcript