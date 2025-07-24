@echo off
:: Script para realizar backup de arquivos de uma pasta
:: Autor: Fábio Wlademir

xcopy "C:\Origem" "D:\Backup" /E /H /C /I
echo Backup concluído.
pause
