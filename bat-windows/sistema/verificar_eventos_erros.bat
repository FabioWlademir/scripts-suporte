@echo off
:: Script para exibir os últimos 10 eventos de erro do sistema
:: Autor: Fábio Wlademir

wevtutil qe System /c:10 /f:text /q:"*[System[(Level=2)]]"
pause
