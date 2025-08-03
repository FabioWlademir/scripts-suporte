# remover_arquivos_tmp.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Remove arquivos antigos do /tmp
find /tmp -type f -atime +10 -delete
echo "Arquivos antigos de /tmp removidos."
