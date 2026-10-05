
Write-Host "Diagnostic réseau CUB"
hostname
Get-Date
ifconfig | Select-String '^\S|inet '
