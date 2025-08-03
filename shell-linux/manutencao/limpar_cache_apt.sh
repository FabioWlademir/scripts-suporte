# limpar_cache_apt.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Limpa o cache do APT
echo "Limpando cache do APT..."
sudo apt clean
sudo apt autoremove -y
