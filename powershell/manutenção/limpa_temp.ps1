<#
.SINOPSE
Remove arquivos temporários do sistema e do usuário.

.AUTOR
Fábio Wlademir - https://github.com/FabioWlademir
#>

$tempPaths = @("$env:TEMP", "$env:WINDIR\Temp")
foreach ($path in $tempPaths) {
    Get-ChildItem -Path $path -Recurse -Force -ErrorAction SilentlyContinue |
    Remove-Item -Force -Recurse -ErrorAction SilentlyContinue
    Write-Host "🧹 Temp apagado em: $path"
}
