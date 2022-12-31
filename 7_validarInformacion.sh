#!/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla utilizando expresiones regulares
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

identificacionRegex='^[0-9]{10}$'
paisRegex='^EC|COL|US|VEN$'
fechaNacimientoRegex='^(19|20)([0-9]{2})(0[1-9]|1[0-2])(0[1-9]|[1-2][0-9]|3[0-1])$'

echo "Expresiones Regulares"
read -p "Ingresar una identificacion:" identificacion
read -p "Ingresar las iniciales de un pais [EC, VEN, COL, US]:" pais
read -p "Ingresar la fecha de nacimiento [yyyyMMdd]:" fechaNacimiento

#Validar identificacion

if [[ $identificacion =~ $identificacionRegex ]]; then
    echo "Identificacion $identificacion valida"
else
    echo "Identificacion $identificacion invalida"
fi

#Validacion Pais

if [[ $pais =~ $paisRegex ]]; then
    echo "Pais $pais valido"
else
    echo "Pais $pais invalido"
fi

#Validacion fecha de nacimiento

if [[ $fechaNacimiento =~ $fechaNacimientoRegex ]]; then
    echo "Fecha de nacimineto $fechaNacimiento valida"
else
    echo "Fecha Nacimiento $fechaNacimiento invalida"
fi