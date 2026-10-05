
Write-Host "Diagnostic réseau CUB"
hostname
Get-Date
ifconfig | Select-String '^\S|inet '
Write-Host "Test de la pile TCP/IP"
ping -c 4 127.0.0.1
Write-Host "Affichage des serveurs DNS"
scutil --dns | Select-String 'nameserver\['
Write-Host "Test de la passerelle"
ping -c 2 192.168.5.126
