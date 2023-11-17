#!/bin/bash
# Script para usar htmlhint y encontrar etiquetas sin cerrar en un archivo HTML

if [ $# -eq 0 ]; then
    echo "Uso: $0 archivo.html"
    exit 1
fi

html_file=$1

# Verificar si htmlhint está instalado
if ! command -v htmlhint &> /dev/null; then
    echo "htmlhint no está instalado. Por favor, instálalo con 'npm install -g htmlhint'."
    exit 1
fi

# Ejecutar htmlhint en el archivo HTML
htmlhint "$html_file"
