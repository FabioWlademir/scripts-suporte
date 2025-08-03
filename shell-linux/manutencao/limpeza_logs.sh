# limpar_logs.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Remove logs antigos e arquivos temporários
sudo journalctl --vacuum-time=7d
sudo rm -rf /var/tmp/* /tmp/*
echo "Logs e arquivos temporários limpos."
