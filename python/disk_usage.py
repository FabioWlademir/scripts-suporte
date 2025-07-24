# Script para verificar espaço em disco
# Autor: Fábio Wlademir

import shutil

total, used, free = shutil.disk_usage("/")
print(f"Total: {total // (2**30)} GB")
print(f"Usado: {used // (2**30)} GB")
print(f"Livre: {free // (2**30)} GB")
