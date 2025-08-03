<#
.SINOPSE
Verifica por atualizações do Windows.

.AUTOR
Fábio Wlademir
#>

Install-Module PSWindowsUpdate -Force -Confirm:$false
Get-WindowsUpdateLog
