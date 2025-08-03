"""
Resolve domínio usando nslookup.
Autor: Fábio Wlademir
"""
import os

dominio = input("🔍 Digite o domínio para resolver: ")
os.system(f"nslookup {dominio}")
