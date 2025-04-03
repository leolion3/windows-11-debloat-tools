# Run as Administrator

Write-Host "Disabling Windows Widgets..." -ForegroundColor Yellow

reg add "HKLM\SOFTWARE\Policies\Microsoft\Dsh" /v AllowNewsAndInterests /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Feeds" /v EnableFeeds /t REG_DWORD /d 0 /f

Write-Host "Windows Widgets disabled!" -ForegroundColor Green
Write-Host "Removing Windows Widgets..." -ForegroundColor Yellow

Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "MicrosoftWindows.Client.WebExperience" } | Remove-AppxPackage

Write-Host "Windows Widgets removed!" -ForegroundColor Green
