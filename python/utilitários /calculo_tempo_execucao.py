"""
Calcula o tempo de execução de um script.
Autor: Fábio Wlademir
"""
import time

inicio = time.time()
input("⏱️ Pressione Enter para encerrar...")
fim = time.time()
print(f"⏲️ Tempo de execução: {fim - inicio:.2f} segundos.")
