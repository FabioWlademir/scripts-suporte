<#
.SINOPSE
Verifica o status atual do Firewall do Windows.

.AUTOR
Fábio Wlademir
#>

Get-NetFirewallProfile | Select Name, Enabled
