@echo off
:: Script para ativar o firewall do Windows
:: Autor: Fábio Wlademir

netsh advfirewall set allprofiles state on
echo Firewall ativado.
pause
