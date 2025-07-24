
@echo off
:: Script para mapear uma unidade de rede
:: Autor: Fábio Wlademir

:: Solicita letra da unidade e caminho da pasta de rede
set /p letra=Digite a letra da unidade (ex: Z): 
set /p caminho=Digite o caminho da rede (ex: \\servidor\compartilhamento): 

:: Mapeia a unidade
net use %letra%: %caminho% /persistent:yes

echo Unidade de rede %letra% mapeada para %caminho%.
pause
