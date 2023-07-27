#!/bin/bash

if [ ! -d $1 ]; then
    echo "El directorio no existe"
    exit 1
fi

total=0 #Contador
for f in `ls $1`; do
    name="$1/$f"
    if [ -f $name ]; then
        bytes=`ls -l $name | cut -d " " -f 5` #Extraer la linea 5 de un ls -l mediante un cut y un pipe 
        echo "Fichero $name ocupa $bytes bytes"  
        (( total = $total + $bytes )) #2 parentesis para expresiones aritmeticas, suma al contador
    fi
done

echo -e "\nTotal ocupado: $total"