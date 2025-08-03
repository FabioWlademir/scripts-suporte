"""
Script para apagar arquivos temporários do sistema.
Autor: Fábio Wlademir
"""
import os
import shutil
import getpass

user = getpass.getuser()

temp_paths = [
    f"C:\\Users\\{user}\\AppData\\Local\\Temp",
    "C:\\Windows\\Temp"
]

for path in temp_paths:
    if os.path.exists(path):
        for item in os.listdir(path):
            try:
                item_path = os.path.join(path, item)
                if os.path.isfile(item_path):
                    os.remove(item_path)
                else:
                    shutil.rmtree(item_path)
            except Exception as e:
                print(f"Erro ao remover {item_path}: {e}")

print("✅ Arquivos temporários removidos.")
