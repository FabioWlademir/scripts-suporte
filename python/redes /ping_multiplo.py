# ===========================================
# Script: Ping multiplo
# Autor: Fábio Wlademir
# ===========================================

import os

hosts = ["8.8.8.8", "1.1.1.1", "google.com"]
for host in hosts:
    response = os.system(f"ping -c 4 {host}" if os.name != 'nt' else f"ping {host}")
