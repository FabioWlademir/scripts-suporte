@echo off
:: Script para verificar antivírus instalado via WMI
:: Autor: Fábio Wlademir

wmic /namespace:\\root\SecurityCenter2 path AntiVirusProduct get displayName,productState
pause
