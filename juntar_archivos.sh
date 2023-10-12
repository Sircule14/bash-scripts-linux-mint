#!/bin/bash

#Nombres de los archivos

archivo1="archivo1.txt"
archivo2="archivo2.txt"

#Nombre del archivo de salida combinado
archivo_combinado="combinado.txt"

#utiizamos cat para combinar archivos
cat "$archivo1" "$archivo2" > "$archivo_combinado"

echo "Los archivos $archivo1 y $archivo2 se han combinado en $archivo_combinado."

