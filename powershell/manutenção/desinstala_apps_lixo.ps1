<#
.SINOPSE
Remove aplicativos padrão desnecessários no Windows 10/11.

.AUTOR
Fábio Wlademir
#>

$apps = @(
    "Microsoft.XboxGamingOverlay",
    "Microsoft.SkypeApp",
    "Microsoft.ZuneMusic",
    "Microsoft.ZuneVideo",
    "Microsoft.GetHelp"
)

foreach ($app in $apps) {
    Get-AppxPackage -Name $app | Remove-AppxPackage
    Write-Host "🗑️ App removido: $app"
}
