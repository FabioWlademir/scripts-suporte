#!/bin/bash
# Script para fazer backup de um diretório
# Autor: Fábio Wlademir

origem="/home/usuario/documentos"
destino="/home/usuario/backup"
data=$(date +%Y-%m-%d)

echo "Realizando backup..."
tar -czvf "$destino/backup_$data.tar.gz" "$origem"
echo "Backup concluído em $destino."
