### Windows Terminal Settings
$InstalledWindowsTerminalSetting = $env:LOCALAPPDATA  + '\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json'
# $WindowsTerminalSettingPath = $env:LOCALAPPDATA  + '\Packages\Microsoft.WindowsTerminalPreview_8wekyb3d8bbwe\LocalState\settings.json'
$BackUpedWindowsTerminalSetting =  $PSScriptRoot + '\..\resorces\WindowsTerminalSetting.json'
Copy-Item -Path $BackUpedWindowsTerminalSetting -Destination $InstalledWindowsTerminalSetting

### VS Code Settings
$BackUpedVsCodeExtensions =  $PSScriptRoot + '\..\resorces\VSCodeExtensions.txt'
foreach($line in Get-Content $BackUpedVsCodeExtensions) {
    echo $line
    code --install-extension $line
}

$InstalledVsCodeSetting = $env:APPDATA  + '\Code\User\settings.json'
$BackUpedWindowsTerminalSetting =  $PSScriptRoot + '\..\resorces\VSCodeSettings.json'
Copy-Item -Path $BackUpedWindowsTerminalSetting -Destination $InstalledVsCodeSetting
