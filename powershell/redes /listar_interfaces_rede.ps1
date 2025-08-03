<#
.SINOPSE
Lista todas as interfaces de rede e seus status.

.AUTOR
Fábio Wlademir
#>

Get-NetAdapter | Select-Object Name, Status, MacAddress, LinkSpeed
