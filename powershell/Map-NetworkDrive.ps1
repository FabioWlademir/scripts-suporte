# Script para mapear unidade de rede
# Autor: Fábio Wlademir

New-PSDrive -Name "Z" -PSProvider FileSystem -Root "\\servidor\compartilhamento" -Persist
Write-Output "Unidade Z: mapeada com sucesso."
