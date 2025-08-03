"""
Verifica atualizações do Windows via PowerShell.
Autor: Fábio Wlademir
Requer: Módulo PSWindowsUpdate
"""
import os

print("🔄 Verificando atualizações disponíveis...
")
os.system("PowerShell -Command Get-WindowsUpdateLog")
