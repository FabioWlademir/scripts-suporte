@echo off
:: Script para remover configurações de proxy
:: Autor: Fábio Wlademir

reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyServer /f
reg delete "HKCU\Software\Microsoft\Windows\CurrentVersion\Internet Settings" /v ProxyEnable /f
echo Proxy desativado.
pause
