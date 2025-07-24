# Script para exibir informações do sistema
# Autor: Fábio Wlademir

Get-ComputerInfo | Select-Object OSName, OSDisplayVersion, CsTotalPhysicalMemory
