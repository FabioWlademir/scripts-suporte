# Script para limpar arquivos temporários do usuário
# Autor: Fábio Wlademir

Remove-Item "$env:TEMP\*" -Recurse -Force
Write-Output "Arquivos temporários removidos."
