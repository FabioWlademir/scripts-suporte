# detectar_ip.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Mostra IP local e externo
ip addr | grep inet
curl ifconfig.me
