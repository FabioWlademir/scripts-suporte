"""
Lista processos e destaca se algum executável estiver fora da pasta Program Files ou Windows.
Autor: Fábio Wlademir
"""
import psutil

print("🔎 Verificando processos suspeitos...
")
for proc in psutil.process_iter(['pid', 'name', 'exe']):
    try:
        exe = proc.info['exe'] or ''
        if exe and not ('Program Files' in exe or 'Windows' in exe):
            print(f"⚠️ {proc.info['name']} ({proc.info['pid']}): {exe}")
    except (psutil.AccessDenied, psutil.NoSuchProcess):
        pass
