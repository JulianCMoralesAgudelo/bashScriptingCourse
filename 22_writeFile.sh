#!/bin/bash
# Programa para ejemplificar como se escribe en un archivo.
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

echo "Escribir en un archivo"

echo "Valores escritos con el comando echo" >>$1

#Adición multilínea
cat <<EOM >>$1
$2
EOM