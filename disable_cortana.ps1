# Run as Administrator

Write-Host "Disabling Cortana..." -ForegroundColor Yellow

Get-AppxPackage -AllUsers | Where-Object { $_.Name -like "Microsoft.549981C3F5F10" } | Remove-AppxPackage
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Windows Search" /v AllowCortana /t REG_DWORD /d 0 /f

Write-Host "Cortana disabled!" -ForegroundColor Green
