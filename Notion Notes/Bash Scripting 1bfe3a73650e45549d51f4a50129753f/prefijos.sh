#!/bin/bash


# 1prefijo 2directorio 

error() {
    echo $1
    exit 1
}

if [ "$#" -ne 2 ]; then # Comprobar que el número de parámetros es correcto

    error "Debe ingresar 2 parametros"

elif [ ! -d "$2" ]; then # Comprobar que el directorio existe
    error "La ruta no existe o no es valida"

else
    for i in $(ls "$2"); do # Recorrer cada fichero del directorio
        name="$2/$i" # Guardar en una variable el nombre actual con la ruta completa
        prefix="$2/$1-$i" # Guardar en una variable el nombre nuevo
        mv "$name" "$prefix" # Cambiar el nombre del fichero
        echo "$name renombrado a $prefix" # Imprimir lo que está haciendo el script
    done
fi