"""
Gera um relatório do sistema em formato HTML.
Autor: Fábio Wlademir
"""
import platform
import socket

html = f"""
<html><body>
<h1>Relatório do Sistema</h1>
<p><strong>Hostname:</strong> {socket.gethostname()}</p>
<p><strong>Sistema:</strong> {platform.system()}</p>
<p><strong>Versão:</strong> {platform.version()}</p>
<p><strong>Arquitetura:</strong> {platform.architecture()[0]}</p>
</body></html>
"""

with open("relatorio.html", "w") as file:
    file.write(html)

print("✅ Relatório gerado como relatorio.html")
