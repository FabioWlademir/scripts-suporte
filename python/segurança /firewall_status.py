"""
Exibe o status do Firewall do Windows.
Autor: Fábio Wlademir
"""
import os

print("🛡️ Verificando status do Firewall...
")
os.system("netsh advfirewall show allprofiles")
