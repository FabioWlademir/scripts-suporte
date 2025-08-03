<#
.SINOPSE
Cria backup dos documentos do usuário para um local externo.

.AUTOR
Fábio Wlademir
#>

$origem = "$env:USERPROFILE\Documents"
$destino = "D:\Backup_Documentos"
Copy-Item -Path $origem -Destination $destino -Recurse
Write-Host "📁 Backup concluído para: $destino"
