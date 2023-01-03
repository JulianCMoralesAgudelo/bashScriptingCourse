#!/bin/bash
# Programa para ejemplificar como capturar la informacion del usuario y validarla.
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

#read -s -> Oculta la información entrante por propio usuario.
#read -n[1,2,3,4…] -> Mantiene la linea de ejecución,
#la misma linea en la que estamos hasta que llegue al numero de carácteres definido.
#read -p -> Indica que hay que dejar la informacion ingresada en la variable siguiente.

echo ""

option=0
backupName=""
clave=""

echo "Programa Utilidades Postgres"
# Acepta el ingreso de información de solo un caracter
read -n1 -p "Ingresar una opción:" option
echo -e "\n"
read -n10 -p "Ingresar el nombre del archivo del backup:" backupName
echo -e "\n"
echo "Opción: $option, BackupName: $bacupName"
read -s -p "Clave: " clave
echo "Clave: $clave"
echo ""
