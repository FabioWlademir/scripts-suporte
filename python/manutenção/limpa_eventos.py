"""
Script para limpar os logs de eventos do Windows.
Autor: Fábio Wlademir
"""
import os
import ctypes

def limpar_eventos():
    if not ctypes.windll.shell32.IsUserAnAdmin():
        print("⚠️ Este script precisa ser executado como administrador.")
        return
    logs = [
        "Application", "Security", "Setup", "System", "ForwardedEvents"
    ]
    for log in logs:
        os.system(f"wevtutil cl {log}")
    print("✅ Logs de eventos limpos com sucesso.")

limpar_eventos()
