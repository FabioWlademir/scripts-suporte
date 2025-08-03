"""
Esvazia a lixeira do usuário.
Autor: Fábio Wlademir
"""
import os

print("🗑️ Esvaziando lixeira...")
os.system("PowerShell.exe -Command Clear-RecycleBin -Force")
print("✅ Lixeira esvaziada.")
