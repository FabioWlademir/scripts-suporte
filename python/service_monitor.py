# Script para verificar se serviço está ativo e reiniciar se necessário (Windows)
# Autor: Fábio Wlademir

import os

servico = "spooler"
status = os.system(f"sc query {servico} | findstr RUNNING")

if status != 0:
    print(f"{servico} não está rodando. Reiniciando...")
    os.system(f"net start {servico}")
else:
    print(f"{servico} está ativo.")
