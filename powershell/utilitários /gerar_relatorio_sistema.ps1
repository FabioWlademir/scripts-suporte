# ===========================================
# Script: Gerar relatorio sistema
# Autor: Fábio Wlademir
# ===========================================

Get-ComputerInfo | Out-File -FilePath sistema_info.txt
