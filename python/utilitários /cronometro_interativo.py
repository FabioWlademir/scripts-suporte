# ===========================================
# Script: Cronometro interativo
# Autor: Fábio Wlademir
# ===========================================

import time

input("Pressione ENTER para iniciar o cronômetro...")
start = time.time()
input("Pressione ENTER para parar...")
end = time.time()

print(f"Tempo decorrido: {round(end - start, 2)} segundos")
