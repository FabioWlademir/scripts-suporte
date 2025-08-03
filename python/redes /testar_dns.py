"""
Script para testar resolução DNS em servidores públicos.
Autor: Fábio Wlademir
"""
import subprocess

hosts = ["8.8.8.8", "1.1.1.1", "cloudflare.com", "google.com"]

for host in hosts:
    print(f"⏳ Testando {host}...")
    result = subprocess.run(["ping", "-n", "2", host], capture_output=True, text=True)
    if "Resposta de" in result.stdout:
        print(f"✅ {host} está respondendo.
")
    else:
        print(f"❌ {host} não respondeu.
")
