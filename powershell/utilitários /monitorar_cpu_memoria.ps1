<#
.SINOPSE
Monitora uso de CPU e Memória em tempo real.

.AUTOR
Fábio Wlademir
#>

while ($true) {
    Get-Counter '\Processor(_Total)\% Processor Time','\Memory\Available MBytes'
    Start-Sleep -Seconds 5
}
