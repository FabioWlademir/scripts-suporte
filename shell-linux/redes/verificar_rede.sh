#!/bin/bash
# Script para testar conectividade com DNS e internet
# Autor: Fábio Wlademir

echo "Testando conectividade com 8.8.8.8..."
ping -c 4 8.8.8.8

echo "Testando conectividade com google.com..."
ping -c 4 google.com

echo "Rota até google.com:"
traceroute google.com
