"""
Lista os usuários do grupo Administradores.
Autor: Fábio Wlademir
"""
import os

print("🔐 Listando membros do grupo Administradores...
")
os.system("net localgroup Administradores")
