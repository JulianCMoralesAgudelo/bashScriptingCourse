#!/bin/bash
# Programa que ejemplifica el uso de funciones y argumentos.
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

# Requisitos
regex_option=’^[1-5]{1}’

# Variables locales
option=0

# functions
install_postgres() {
    echo “Instalando Postgres …”
}

uninstall_postgres() {
    echo “Desinstalando Postgres …”
}

create_backup() {
    read -p "Enter the name of the file: " backup_filename
    echo “Creando el backup ‘$backup_filename’ en $(pwd) …”
}

restore_backup() {
    read -p "Enter the name of the backup’s file: " backup_filename
    echo “Restaurando el backup ‘$backup_filename’ …”
}

get_exit() {
    echo -e “Saliendo …\n”
}

wrong_option() {
    echo “Las options deben ser 1-5”
}

while :; do
    # Limpiar la pantalla
    clear
    # Mostrar el menu de opciones
    echo "----------------------------------------"
    echo "PGUTIL - Programa de utilidades Postgres"
    echo "----------------------------------------"
    echo " Menu Principal "
    echo "----------------------------------------"
    echo "1.Instalar Postgres"
    echo "2.Desinstalar Postgres"
    echo "3.Hacer un bakcup"
    echo "4.Restaurar el backup"
    echo "5.Salir."
done