<#
.SINOPSE
Agenda reinicialização em modo de segurança.

.AUTOR
Fábio Wlademir
#>

bcdedit /set {current} safeboot minimal
shutdown /r /t 5
