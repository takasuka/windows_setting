$install_list = $PSScriptRoot + "\..\resorces\winget_install.txt"

foreach($line in Get-Content $install_list) {
    echo $line
    #winget install $line --silent --accept-package-agreements --accept-source-agreements
}