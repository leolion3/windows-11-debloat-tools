# Run as admin
# Performs a debloat for Windows 11

# Restores the legacy context menu
./restore_legacy_context_menu.cmd

# Perform debloat
powershell -ep bypass -File disable_bing_search.ps1
powershell -ep bypass -File disable_cortana.ps1
powershell -ep bypass -File disable_lock_screen_ads_and_recommendations.ps1
powershell -ep bypass -File disable_rdp.ps1
powershell -ep bypass -File disable_remote_assistance.ps1
powershell -ep bypass -File disable_telemetry.ps1
powershell -ep bypass -File disable_xbox_services.ps1
powershell -ep bypass -File remove_chat_button_from_taskbar.ps1
powershell -ep bypass -File remove_preinstalled_apps.ps1
powershell -ep bypass -File remove_recommended_apps_from_start.ps1
powershell -ep bypass -File remove_windows_widgets.ps1

# Disable Samba v1 for Ransomware protection
powershell -ep bypass -File disable_smbv1.ps1

# Optional
powershell -ep bypass -File disable_animations.ps1
powershell -ep bypass -File disable_network_throttling.ps1

powershell -ep bypass -File remove_unnecessary_features.ps1
