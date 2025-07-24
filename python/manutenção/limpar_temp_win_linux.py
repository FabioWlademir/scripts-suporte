# ===========================================
# Script: Limpar temp win linux
# Autor: Fábio Wlademir
# ===========================================

import os, platform, shutil

if platform.system() == "Windows":
    os.system('del /q/f/s %TEMP%\\*')
else:
    os.system('rm -rf /tmp/*')
print("Arquivos temporários removidos com sucesso!")
