#!/bin/bash
# Programa para ejemplificar el uso de la sentencia de iteración for Anidados
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

echo "Loops Anidados"

for fil in $(ls); do
    for nombre in {1..4}; do
        echo "Nombre archivo:$fil _ $nombre"
    done
done
