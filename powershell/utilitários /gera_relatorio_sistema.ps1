<#
.SINOPSE
Gera um relatório completo de sistema e exporta para arquivo HTML.

.AUTOR
Fábio Wlademir
#>

$info = Get-ComputerInfo
$info | ConvertTo-Html -Property CsName, OsName, OsArchitecture, WindowsVersion, WindowsBuildLabEx, BiosVersion, BiosReleaseDate |
Out-File "$env:USERPROFILE\Desktop\relatorio_sistema.html"
Write-Host "📄 Relatório gerado na área de trabalho."
