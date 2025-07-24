@echo off
:: Script para criar ponto de restauração usando VBS
:: Autor: Fábio Wlademir

echo Set o=GetObject("winmgmts:\\.\root\default:SystemRestore") > criar_ponto.vbs
echo o.CreateRestorePoint "Backup Manual", 0, 100 >> criar_ponto.vbs
cscript criar_ponto.vbs
del criar_ponto.vbs
echo Ponto de restauração criado.
pause
