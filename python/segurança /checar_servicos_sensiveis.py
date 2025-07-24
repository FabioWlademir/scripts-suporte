# ===========================================
# Script: Checar servicos sensiveis
# Autor: Fábio Wlademir
# ===========================================

import os

servicos = ["sshd", "apache2", "nginx"]
for serv in servicos:
    os.system(f"systemctl status {serv}")
