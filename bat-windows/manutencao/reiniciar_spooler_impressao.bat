@echo off
:: Script para reiniciar o serviço de spooler de impressão
:: Autor: Fábio Wlademir

net stop spooler
del /q /f C:\Windows\System32\spool\PRINTERS\*
net start spooler
echo Spooler reiniciado.
pause
