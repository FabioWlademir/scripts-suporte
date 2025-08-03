# Script para verificar status do firewall
# Autor: Fábio Wlademir

Get-NetFirewallProfile | Select Name, Enabled
