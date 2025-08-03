# checar_sudoers.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Verifica conteúdo de sudoers
sudo cat /etc/sudoers | grep -v "^#"
