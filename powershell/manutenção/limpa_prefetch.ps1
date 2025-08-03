<#
.SINOPSE
Apaga arquivos de pré-busca do Windows (Prefetch), útil em diagnósticos de desempenho.

.AUTOR
Fábio Wlademir
#>

Remove-Item -Path "$env:SystemRoot\Prefetch\*" -Force
Write-Host "🧹 Arquivos de Prefetch apagados com sucesso."
