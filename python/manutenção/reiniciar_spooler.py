"""
Script para reiniciar o serviço de spooler de impressão.
Autor: Fábio Wlademir
"""
import os

print("⏳ Reiniciando serviço de spooler...")
os.system("net stop spooler")
os.system("net start spooler")
print("✅ Spooler reiniciado com sucesso.")
