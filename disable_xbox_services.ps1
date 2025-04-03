# Run as Administrator

Write-Host "Disabling Xbox services..." -ForegroundColor Yellow

$services = @(
    "XboxGipSvc",
    "XblAuthManager",
    "XblGameSave",
    "XboxNetApiSvc"
)

foreach ($service in $services) {
    Stop-Service $service -Force
    Set-Service $service -StartupType Disabled
}

Write-Host "Xbox services disabled!" -ForegroundColor Green
