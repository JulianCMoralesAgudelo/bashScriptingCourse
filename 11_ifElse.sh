#!/bin/bash
# Programa para ejemplificar el uso de condicionales.
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

echo ""
echo "Ejemplo if - else"
edad=0
echo -e "\n"

if [ $edad -le 18 ]; then
    echo "La persona es adolescente"
elif [ $edad -ge 19 ] && [ $edad -le 64 ]; then
    echo "La persona es adulta"
else
    echo "La persona es adulto mayor"
fi

echo ""