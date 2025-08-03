<#
.SINOPSE
Remove entradas indesejadas da inicialização.

.AUTOR
Fábio Wlademir
#>

Get-CimInstance -ClassName Win32_StartupCommand | Select-Object Name, Command, Location
