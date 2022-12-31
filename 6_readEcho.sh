# !/bin/bash
# Programa para capturar informacion comando echo
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

echo ""
echo "Ingrese un numero:"

opcion=0
backupName=""

echo "Programa Utilidades Postgres"
echo "Opción: $opcion"
echo -n "Ingrese una opcion: "
read
opcion=$REPLY
echo -n "Ingresar nombre del archivo: "
read
backupName=$REPLY
echo "Opcion:$opcion, BackupName:$backupName"
echo ""
