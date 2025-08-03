<#
.SINOPSE
Limpa os logs de eventos do Windows para liberar espaço e facilitar a leitura de novos eventos.

.AUTOR
Fábio Wlademir - https://github.com/FabioWlademir
#>

$logs = wevtutil el
foreach ($log in $logs) {
    try {
        wevtutil cl "$log"
        Write-Host "✔️ Log limpo: $log"
    } catch {
        Write-Host "❌ Falha ao limpar log: $log"
    }
}
