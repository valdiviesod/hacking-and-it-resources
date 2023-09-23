#!/bin/bash

# -f -> fichero existe 
# -d -> directorio existe

if [ ! -d $1 ]; then
echo "El directorio no existe"
exit 1 # No va bien (Puede ser exit 0)
fi 

fich=`ls $1`
for i in $fich; do 
if [ -s $i ]; then
echo `cat $i`
else 
echo "Fichero vacio"
fi
done