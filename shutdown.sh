#!/bin/bash

# Solicita al usuario que ingrese la cantidad de minutos antes de apagar el sistema
read -p "Ingrese la cantidad de minutos antes de apagar el sistema: " minutos

# Calcula el tiempo en segundos
segundos=$((minutos * 60))

# Muestra un mensaje de confirmación
echo "El sistema se apagará en $minutos minutos."

# Espera el tiempo especificado antes de apagar el sistema
sleep $segundos

# Apaga el sistema
shutdown -h now
