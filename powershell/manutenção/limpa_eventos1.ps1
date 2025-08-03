# ===========================================
# Script: Limpar eventos
# Autor: Fábio Wlademir
# ===========================================

wevtutil cl System
wevtutil cl Application
wevtutil cl Security
Write-Host "Logs de eventos limpos com sucesso."
