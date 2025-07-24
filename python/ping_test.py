# Script para testar conectividade com hosts
# Autor: Fábio Wlademir

import os

hosts = ["8.8.8.8", "google.com"]
for host in hosts:
    print(f"Ping em {host}:")
    os.system(f"ping -n 4 {host}")
