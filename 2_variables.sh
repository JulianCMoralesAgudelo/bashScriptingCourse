# !/bin/bash
# Programa para realizar operaciones utilitarias de postgres
# Autor: Julian Camilo Morales Agudelo - @JulianCMoralesA
opcion=0
nombre=Julian

echo "Opción: $opcion y Nombre: $nombre"

# Exportar la variable nombre para que este disponible a los demas procesos

export nombre

# Llamar al siguiente script para recuperar la variable
./2_Variables_2.sh
