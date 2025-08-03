# listar_usuarios_admin.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Lista usuários com privilégio de sudo
getent group sudo | cut -d: -f4
