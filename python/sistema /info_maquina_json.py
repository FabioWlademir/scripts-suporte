# ===========================================
# Script: Info maquina json
# Autor: Fábio Wlademir
# ===========================================

import platform, json

info = {
    "Sistema": platform.system(),
    "Versão": platform.version(),
    "Release": platform.release(),
    "Arquitetura": platform.machine()
}

print(json.dumps(info, indent=4))
