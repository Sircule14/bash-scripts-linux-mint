#!/bin/bash

directorio="/home/iluminatic/Testbash" #esta ruta se remplaza por el directorio que queremos

# Verifica si el directorio exist
if [ -d "$directorio" ]; then
	cd "$directorio" #cambia el directorio
	for archivo in *; do
	#comprueba si el nombre del archivo tiene espacios
	if [[ "$archivo" == *" "* ]]; then
	# Reemplaza los espacios con guiones bajos
	nuevo_nombre=$(echo "$archivo" | tr ' ' '_')
	# Renombra el archvivo o carpeta
	mv "$archivo" "$nuevo_nombre"
	echo "Renombrado $archivo -> $nuevo_nombre"
	fi
	done
	echo "Eliminacion de espacios completada en el directorio: $directorio"
	else
	echo "El directorio $directorio no existe."
 fi


