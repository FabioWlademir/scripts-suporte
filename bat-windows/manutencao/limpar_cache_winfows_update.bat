@echo off
:: Script para limpar o cache do Windows Update
:: Autor: Fábio Wlademir

net stop wuauserv
net stop bits
rd /s /q %windir%\SoftwareDistribution
net start wuauserv
net start bits
echo Cache do Windows Update limpo.
pause
