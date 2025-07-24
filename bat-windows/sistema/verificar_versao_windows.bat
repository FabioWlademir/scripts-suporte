@echo off
:: Script para exibir nome e versão do Windows
:: Autor: Fábio Wlademir

systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
pause
