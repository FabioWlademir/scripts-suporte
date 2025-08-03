"""
Mostra interface de rede ativa.
Autor: Fábio Wlademir
"""
import os

print("🔧 Interfaces de rede ativas:
")
os.system("PowerShell -Command Get-NetAdapter | Where-Object {$_.Status -eq 'Up'}")
