#!/bin/bash

#"Elimina archivos temporales y cache...."
echo "Eliminando archivos temporales y cache..."
sudo apt-get clean
sudo apt-get autoclean
sudo apt-get autoremove

#Actualizar el sistema
echo "Actualizando el sistema..."
sudo apt-get update
sudo apt-get upgrade

#Muestra espacio libre en el sistema de archivos y en la raiz
echo "Espacio libre en el sistema de archivos:"
df -h /
echo "Espacio libre en la raiz:"
df -h ~

echo "Tareas completadas"
