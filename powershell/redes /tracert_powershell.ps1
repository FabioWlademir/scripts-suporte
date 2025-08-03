<#
.SINOPSE
Simula um tracert utilizando Resolve-DnsName e Test-NetConnection.

.AUTOR
Fábio Wlademir
#>

$host = "google.com"
Test-NetConnection -TraceRoute -ComputerName $host
