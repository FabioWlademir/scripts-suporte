@echo off
:: Script para resetar pilha TCP/IP e Winsock
:: Autor: Fábio Wlademir

netsh int ip reset
netsh winsock reset
echo Rede resetada. Reinicie o computador.
pause
