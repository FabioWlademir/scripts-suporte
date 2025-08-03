# gerar_relatorio_sistema.sh
#!/bin/bash
# Autor: Fábio Wlademir
# Gera um relatório com dados básicos
echo "Relatório do Sistema - $(date)" > relatorio.txt
uname -a >> relatorio.txt
echo "\nCPU:" >> relatorio.txt
lscpu | grep "Model name" >> relatorio.txt
echo "\nMemória:" >> relatorio.txt
free -h >> relatorio.txt
echo "\nDisco:" >> relatorio.txt
df -hT >> relatorio.txt
echo "\nRede:" >> relatorio.txt
ip a >> relatorio.txt
echo "Relatório gerado em relatorio.txt"
