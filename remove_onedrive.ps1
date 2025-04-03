# Run as Administrator

Write-Host "Uninstalling OneDrive..." -ForegroundColor Yellow

taskkill /F /IM OneDrive.exe
Start-Process -FilePath "$env:SystemRoot\SysWOW64\OneDriveSetup.exe" -ArgumentList "/uninstall" -NoNewWindow -Wait

Write-Host "OneDrive removed!" -ForegroundColor Green
