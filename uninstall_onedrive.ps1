# Run as Administrator
taskkill /F /IM OneDrive.exe
Start-Process -FilePath "$env:SystemRoot\SysWOW64\OneDriveSetup.exe" -ArgumentList "/uninstall" -NoNewWindow -Wait
Write-Host "OneDrive has been removed." -ForegroundColor Green
