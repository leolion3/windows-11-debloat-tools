# Run as Administrator

# Find the Microsoft Edge installation path
$EdgePath = Get-ChildItem -Path "C:\Program Files (x86)\Microsoft\Edge\Application\" -Name "*.*.*.*" | Sort-Object -Descending | Select-Object -First 1

if ($EdgePath) {
    $EdgeSetup = "C:\Program Files (x86)\Microsoft\Edge\Application\$EdgePath\Installer\setup.exe"
    Start-Process -FilePath $EdgeSetup -ArgumentList "--uninstall --system-level --verbose-logging --force-uninstall" -NoNewWindow -Wait
    Write-Host "Microsoft Edge has been removed." -ForegroundColor Green
} else {
    Write-Host "Microsoft Edge not found!" -ForegroundColor Red
}
