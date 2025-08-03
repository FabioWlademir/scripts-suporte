<#
.SINOPSE
Lista todos os usuários que pertencem ao grupo Administradores.

.AUTOR
Fábio Wlademir
#>

Get-LocalGroupMember -Group "Administradores" | Select-Object Name, ObjectClass
