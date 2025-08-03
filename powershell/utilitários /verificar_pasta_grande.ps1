<#
.SINOPSE
Lista as maiores pastas de um diretório, útil para limpeza de disco.

.AUTOR
Fábio Wlademir
#>

$path = "C:\"
Get-ChildItem -Path $path -Directory |
Sort-Object { (Get-ChildItem $_.FullName -Recurse | Measure-Object -Property Length -Sum).Sum } -Descending |
Select-Object FullName -First 10
