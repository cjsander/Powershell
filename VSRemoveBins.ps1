# Remove all bin and obj folders recursively
Get-ChildItem -Path . -Include bin,obj -Recurse -Force -Directory |
    ForEach-Object {
        Write-Host "Deleting $($_.FullName)"
        Remove-Item $_.FullName -Recurse -Force -ErrorAction SilentlyContinue
    }

Write-Host "Cleanup complete."
