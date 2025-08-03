<#
.SINOPSE
Reinicia o processo explorer.exe — útil em manutenção sem reiniciar o PC.

.AUTOR
Fábio Wlademir
#>

Stop-Process -Name explorer -Force
Start-Process explorer
Write-Host "🔄 Explorer reiniciado."
