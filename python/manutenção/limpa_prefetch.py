"""
Remove arquivos da pasta prefetch do Windows.
Autor: Fábio Wlademir
"""
import os

path = "C:\\Windows\\Prefetch"
try:
    for file in os.listdir(path):
        full_path = os.path.join(path, file)
        os.remove(full_path)
    print("✅ Arquivos de prefetch limpos.")
except Exception as e:
    print(f"Erro ao limpar prefetch: {e}")
