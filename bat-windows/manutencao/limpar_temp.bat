@echo off
:: Script para limpar arquivos temporários do usuário
:: Autor: Fábio Wlademir

del /q /f %TEMP%\*
rd /s /q %TEMP%
echo Arquivos temporários removidos.
pause
