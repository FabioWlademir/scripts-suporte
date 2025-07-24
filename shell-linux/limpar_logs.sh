#!/bin/bash
# Script para limpar logs antigos do sistema
# Autor: Fábio Wlademir

echo "Removendo logs com mais de 7 dias..."
find /var/log -type f -mtime +7 -exec rm -f {} \;
echo "Logs antigos removidos."
