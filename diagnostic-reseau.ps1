
Write-Host "Diagnostic réseau CUB"
hostname
Get-Date
ifconfig | Select-String '^\S|inet '
Write-Host "Test de la pile TCP/IP"
ping -c 4 127.0.0.1
