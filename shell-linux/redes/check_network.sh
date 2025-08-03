# verificar_rede.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Testa conexão com a internet
ping -c 4 8.8.8.8 && echo "Conectado à internet." || echo "Sem conexão."
