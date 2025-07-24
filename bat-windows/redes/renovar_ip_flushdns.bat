@echo off
:: Script para renovar IP e limpar cache DNS
:: Autor: Fábio Wlademir

ipconfig /release
ipconfig /renew
ipconfig /flushdns
echo Operação concluída.
pause
