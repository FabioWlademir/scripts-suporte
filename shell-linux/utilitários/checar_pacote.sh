# checar_pacote.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Verifica se pacote está instalado
read -p "Digite o nome do pacote: " pkg
dpkg -l | grep "$pkg"
