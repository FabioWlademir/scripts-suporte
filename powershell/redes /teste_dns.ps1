<#
.SINOPSE
Testa a resolução DNS com servidores públicos e sites conhecidos.

.AUTOR
Fábio Wlademir
#>

$hosts = @("8.8.8.8", "cloudflare.com", "f2suporte.blogspot.com")
foreach ($host in $hosts) {
    $ok = Test-Connection $host -Count 2 -Quiet
    if ($ok) {
        Write-Host "🟢 $host está respondendo."
    } else {
        Write-Host "🔴 $host não responde."
    }
}
