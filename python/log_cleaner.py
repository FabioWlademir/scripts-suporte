# Script para apagar logs antigos em uma pasta
# Autor: Fábio Wlademir

import os
import time

pasta = "C:\\Logs"
dias = 7
agora = time.time()

for arquivo in os.listdir(pasta):
    caminho = os.path.join(pasta, arquivo)
    if os.path.isfile(caminho):
        if agora - os.path.getmtime(caminho) > dias * 86400:
            os.remove(caminho)
            print(f"Removido: {arquivo}")
