# Get param
Param(
    [String]$isInstall = 'false'
)

# Change registry
# For Acrylic Effect
Set-Itemproperty -path 'HKLM:\SOFTWARE\Microsoft\Windows\DWM\ExtendedComposition' -Name 'ForceEffectMode' -value '2'

# Install Software
if ($isInstall -eq 'true') {
    $winget = $PSScriptRoot + '.\bin\Install.ps1'
    & $winget
}

# Import Settings
$importSettings = $PSScriptRoot + '.\bin\ImportSettings.ps1'
& $importSettings