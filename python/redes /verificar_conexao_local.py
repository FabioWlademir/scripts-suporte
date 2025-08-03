"""
Verifica conectividade da rede local usando ping ao gateway.
Autor: Fábio Wlademir
"""
import os

print("📡 Verificando IP do gateway local...")
os.system("ipconfig | findstr Gateway")
gateway = input("Digite o IP do gateway para testar: ")
os.system(f"ping -n 4 {gateway}")
