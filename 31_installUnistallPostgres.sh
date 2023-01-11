#!/bin/bash
# Programa que permite manejar las utilidades de Postgres.
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA juliancmorales10@gmail.com

option=0
backup_directory=""
restore_directory=""

install_postgresql() {
    echo -e "\nVerifying PostgreSQL installation..."
    is_pg_installed=$(which psql)

    if [ $? -eq 0 ]; then
        echo -e "\nPostgreSQL is already installed on this server."
    else
        echo -e "\n"
        read -s -p "Enter the sudo password: " password
        echo -e "\n"
        read -s -p "Enter the new PostgreSQL password: " postgresql_password

        echo "$password" | sudo -S apt update
        echo "$password" | sudo -S apt install postgresql postgresql-contrib -y
        echo -e "\nInstalling PostgreSQL..."

        sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD '{postgresql_password}';"

        echo "$password" | sudo -S service postgresql enable
        echo "$password" | sudo -S service postgresql start
    fi

    echo -e "\n"
    read -n1 -s -r -p "Press [ENTER] to continue..."
}

uninstall_postgresql() {
    echo -e "\n"
    read -s -p "Enter the sudo password: " password

    echo -e "\nUninstalling PostgreSQL..."

    echo "$password" | sudo -S service postgresql stop
    echo "$password" | sudo -S apt remove postgresql\* --purge -y
    echo "$password" | sudo -S rm -rf /etc/postgresql
    echo "$password" | sudo -S rm -rf /etc/postgresql-common
    echo "$password" | sudo -S rm -rf /var/lib/postgresql
    echo "$password" | sudo -S userdel -r postgres
    echo "$password" | sudo -S groupdel postgresql

    echo -e "\n"
    read -n1 -s -r -p "Press [ENTER] to continue..."
}

backup() {
    echo -e "\nBackuping..."
    echo -e "\nBackup directory: $1"
}

restore_backup() {
    echo -e "\nRestoring backup..."
    echo -e "\nRestore directory: $1"
}

while :; do
    clear
    echo "-------------------------------------"
    echo "PGUTIL - PostgreSQL utilities program"
    echo "-------------------------------------"
    echo "              MAIN MENU              "
    echo "-------------------------------------"
    echo "1. Install PostgreSQL"
    echo "2. Uninstall PostgreSQL"
    echo "3. Backup"
    echo "4. Restore Backup"
    echo "5. Exit"

    read -n1 -p "Enter an option [1-5]: " option

    case $option in
    1)
        install_postgresql
        sleep 3
        ;;
    2)
        uninstall_postgresql
        sleep 3
        ;;
    3)
        echo -e "\n"
        read -p "Enter the backup directory: " backup_directory
        backup $backup_directory
        sleep 3
        ;;
    4)
        echo -e "\n"
        read -p "Enter the backup restore directory: " restore_directory
        restore_backup $restore_directory
        sleep 3
        ;;
    5)
        echo -e "\nExiting..."
        exit 0
        ;;
    esac
done