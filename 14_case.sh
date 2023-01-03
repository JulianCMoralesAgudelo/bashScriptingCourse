#!/bin/bash
# Programa para ejemplificar la sentencia case 
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com


opcion=""

echo "Ejemplo Sentencia Case"
read -p "Ingrese una opción de la A - Z:" opcion
echo -e "\n"

case $opcion in
    "A") echo -e "\nOperación Guardar Arhivo";;
    "B") echo "Operación Eliminar Archivo";;
    [C-E]) echo "No esta implementada la operación";;
    "*") "Opción Incorrecta"
esac
