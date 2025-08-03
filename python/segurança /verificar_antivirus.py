"""
Verifica se há antivírus registrado no Windows Security Center.
Autor: Fábio Wlademir
"""
import os

print("🧰 Verificando antivírus...
")
os.system("PowerShell -Command Get-CimInstance -Namespace root/SecurityCenter2 -ClassName AntivirusProduct")
