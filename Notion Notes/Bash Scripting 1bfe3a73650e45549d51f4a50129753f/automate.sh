#!/bin/bash

#1nombre 2extension 3numero 4ruta
# $# -> Numero de paramentros (Total en el input)

error() {
    echo "$1"
    exit 1
}

if [ "$#" -ne 4 ]; then
    error "Debe ingresar 4 parametros"

elif [ ! -d "$4" ]; then
    error "La ruta no existe o no es valida"

elif [ "$3" -lt 1 ]; then
    error "Ingrese un numero de ficheros valido"

else
    for ((i = 1; i <= $3; i++)); do #Recorre el numero de ficheros
        name="$4/$1$i.$2"
        touch "$name"
        echo "Fichero $name creado en $4" 
    done
fi
