<#
.SINOPSE
Lista portas de rede abertas (semelhante ao netstat).

.AUTOR
Fábio Wlademir
#>

Get-NetTCPConnection | Where-Object { $_.State -eq "Listen" } | Select-Object LocalAddress, LocalPort, OwningProcess
