<#
.SINOPSE
Lista tentativas de logon mal-sucedidas nos logs de segurança.

.AUTOR
Fábio Wlademir
#>

Get-WinEvent -LogName Security -FilterXPath "*[System[(EventID=4625)]]" | Select TimeCreated, Message -First 10
