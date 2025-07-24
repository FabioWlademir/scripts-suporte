@echo off
:: Script para configurar IP e DNS para DHCP
:: Autor: Fábio Wlademir

netsh interface ip set address "Ethernet" dhcp
netsh interface ip set dns "Ethernet" dhcp
echo IP e DNS configurados para DHCP.
pause
