# verificar_servicos.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Lista serviços ativos
systemctl list-units --type=service --state=active
