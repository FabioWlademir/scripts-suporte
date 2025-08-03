"""
Exibe tempo de atividade do sistema.
Autor: Fábio Wlademir
"""
import os

os.system("net stats srv | findstr "Stat"")
