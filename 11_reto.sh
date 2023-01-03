#!/bin/bash
# Programa para ejemplificar el uso de condicionales.
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

# Solicitar que se ingrese un valor del 1 al 5.
# Según el valor ingresado, hacer la validación utilizando las condicionales e imprimir el resultado.
# Construir expresiones de validación numéricas, cadenas y archivos según la opción ingresada.

selecRegex='^[1-5]{1}$'

read -p "selecciona un numero del 1 al 5: " selec

if [[ $selec =~ $selecRegex ]]; then
    if [[ $selec -eq 1 ]]; then
        echo "elegiste 1"
    elif [[ $selec -eq 2 ]]; then
        echo "Elegiste 2"
    elif [[ $selec -eq 3 ]]; then
        echo "Elegiste 3"
    elif [[ $selec -eq 4 ]]; then
        echo "Elegiste 4"
    elif [[ $selec -eq 5 ]]; then
        echo "Elegiste 5"
    fi
else
    echo "numero incorrecto"

fi
