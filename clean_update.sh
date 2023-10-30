#!/bin/bash

#Limpieza del sistema
echo "Iniciando limpieza de sistema..."
#Utilizamos "sudo apt-get autoremve" para eliminar paquetes huerfanos.
sudo apt-get- autoremove

#Ahora, actualizaciones disponibles.
echo "Verificando actualizaciones disponibles"
#Utilizamos "sudo-apt-get update" para actualizar lista de paquetes/
sudo apt-get update
#Utiiza el comando "sudo apt-get --just-print upgrade" para ver actualizaciones
updates=$(sudo apt-get --just-print upgrade | grep "Inst " | awk '{print $2}')
if [ -n "$updates" ]; then
	echo "Actualizaciones disponibles:"
	echo "$updates"
	else
	echo "No hay actualizaciones disponibles."
fi
