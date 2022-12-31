# !/bin/bash
# Programa para capturar informacion comando read
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

echo ""

opcion=0
backupName=""

echo "Programa Utilidades Postgres"
read -p "Ingrese una opción: " opcion
read -p "Ingresar nombre del archivo: " backupName
echo "Opción:$opcion, BackupName:$backupName"
echo ""
