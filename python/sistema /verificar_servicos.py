"""
Exibe serviços em execução.
Autor: Fábio Wlademir
"""
import os

os.system("PowerShell -Command Get-Service | Where-Object {$_.Status -eq 'Running'}")
