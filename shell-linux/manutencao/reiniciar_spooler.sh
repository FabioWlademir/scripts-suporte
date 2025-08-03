# reiniciar_spooler.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Reinicia o serviço de impressão
sudo systemctl restart cups
systemctl status cups --no-pager
