"""
Executa tracert até o Google para detectar rotas e perdas.
Autor: Fábio Wlademir
"""
import os

print("🌐 Executando tracert para www.google.com...
")
os.system("tracert www.google.com")
