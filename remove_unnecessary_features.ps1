# Run as Administrator

Write-Host "Removing unnecessary Windows features..." -ForegroundColor Yellow

$features = @(
    "Printing-XPSServices-Features",
    "WorkFolders-Client",
    "FaxServicesClientPackage",
    "MediaPlayback",
#    "WindowsMediaPlayer",
#    "Microsoft-Windows-Subsystem-Linux"
)

foreach ($feature in $features) {
    Disable-WindowsOptionalFeature -FeatureName $feature -Online -NoRestart
}

Write-Host "Windows features removed!" -ForegroundColor Green
