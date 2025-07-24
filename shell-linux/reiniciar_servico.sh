#!/bin/bash
# Script para reiniciar o serviço Apache
# Autor: Fábio Wlademir

echo "Reiniciando Apache..."
sudo systemctl restart apache2
echo "Apache reiniciado."
