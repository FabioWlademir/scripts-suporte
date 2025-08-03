"""
Cria uma cópia de segurança de arquivos .txt
Autor: Fábio Wlademir
"""
import os
import shutil

origem = input("📁 Pasta de origem: ")
destino = input("📂 Pasta de destino: ")

if not os.path.exists(destino):
    os.makedirs(destino)

for file in os.listdir(origem):
    if file.endswith(".txt"):
        shutil.copy(os.path.join(origem, file), destino)
        print(f"📄 Copiado: {file}")
