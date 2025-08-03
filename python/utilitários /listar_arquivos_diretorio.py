"""
Lista arquivos de um diretório com tamanhos.
Autor: Fábio Wlademir
"""
import os

path = input("📁 Digite o diretório a listar: ")
for root, dirs, files in os.walk(path):
    for file in files:
        full = os.path.join(root, file)
        size = os.path.getsize(full)
        print(f"{full} - {size} bytes")
