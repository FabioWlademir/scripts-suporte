@echo off
:: Script para exibir informações básicas de hardware
:: Autor: Fábio Wlademir

echo CPU:
wmic cpu get name

echo Memória:
wmic memorychip get capacity

echo Disco:
wmic diskdrive get model,size

pause
