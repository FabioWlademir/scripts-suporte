"""
Detecta se o sistema é 32 ou 64 bits.
Autor: Fábio Wlademir
"""
import platform

print("🏗️ Arquitetura do sistema:", platform.architecture()[0])
