# checar_disco.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Mostra o uso de disco
df -hT | grep -v tmpfs
