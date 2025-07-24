#!/bin/bash
# Script para exibir uso de CPU e memória
# Autor: Fábio Wlademir

echo "Uso de CPU e memória:"
top -b -n 1 | head -n 10
