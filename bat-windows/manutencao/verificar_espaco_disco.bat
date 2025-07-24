@echo off
:: Script para verificar espaço livre em disco
:: Autor: Fábio Wlademir

wmic logicaldisk get size,freespace,caption
pause
