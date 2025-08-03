# testar_dns.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Testa DNS com servidores conhecidos
for dns in 1.1.1.1 8.8.8.8; do
    echo "Testando DNS: $dns"
    dig @${dns} google.com | grep "status"
done
