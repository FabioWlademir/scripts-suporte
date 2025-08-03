# Script para reiniciar o spooler de impressão
# Autor: Fábio Wlademir

Restart-Service -Name spooler
Write-Output "Spooler reiniciado com sucesso."
