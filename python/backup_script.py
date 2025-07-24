# Script para copiar arquivos de uma pasta para outra
# Autor: Fábio Wlademir

import shutil
import os

origem = "C:\\Origem"
destino = "D:\\Backup"

shutil.copytree(origem, destino, dirs_exist_ok=True)
print("Backup concluído.")
