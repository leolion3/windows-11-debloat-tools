# Run as Administrator

# List of bloatware packages to remove
$bloatware = @(
    "Microsoft.549981C3F5F10", # Cortana
    "Microsoft.XboxGamingOverlay",
    "Microsoft.Xbox.TCUI",
    "Microsoft.XboxGameOverlay",
    "Microsoft.XboxApp",
    "Microsoft.XboxSpeechToTextOverlay",
#    "Microsoft.YourPhone",
    "Microsoft.People",
    "Microsoft.BingWeather",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "Microsoft.MicrosoftSolitaireCollection",
    "Microsoft.MSPaint",
    "Microsoft.3DBuilder",
    "Microsoft.WindowsCamera",
    "Microsoft.WindowsMaps",
    "Microsoft.GetHelp",
    "Microsoft.Getstarted",
    "Microsoft.WindowsFeedbackHub",
    "Microsoft.MixedReality.Portal"
)

# Remove each app
foreach ($app in $bloatware) {
    Get-AppxPackage -AllUsers | Where-Object { $_.Name -like $app } | Remove-AppxPackage
    Get-AppxProvisionedPackage -Online | Where-Object { $_.PackageName -like $app } | Remove-AppxProvisionedPackage -Online
}

Write-Host "Bloatware removed." -ForegroundColor Green
