#!/bin/bash

# Pide al usuario su nombre
echo "Por favor, ingresa tu nombre:"
read nombre

# Registra la hora de entrada y la fecha
fecha_entrada=$(date +"%Y-%m-%d %H:%M:%S")
echo "Nombre: $nombre" >> registro_horas.txt
echo "Hora de entrada: $fecha_entrada" >> registro_horas.txt

# Pide al usuario registrar la hora de salida
echo "¿Deseas registrar la hora de salida? (y/n):"
read registrar_salida

if [ "$registrar_salida" == "y" ]; then
  if [ -z "$(grep "Hora de entrada" registro_horas.txt)" ]; then
    echo "No hay registro de entrada. Debes registrar la hora de entrada primero."
  else
    fecha_salida=$(date +"%Y-%m-%d %H:%M:%S")
    echo "Hora de salida: $fecha_salida" >> registro_horas.txt
    echo "Hora de salida registrada."
  fi
else
  echo "Hora de salida no registrada."
fi

