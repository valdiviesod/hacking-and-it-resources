#!/bin/bash

echo -n "Input (sS/n): "
read result 

if [ $result = 's' ] || [ $result = 'S' ]; then
echo "Bien hecho"
elif [ $result = 'n' ]; then
echo "Nooooooooo"
elif [ -z $result ];then
echo "No ingrese caracteres vacios"
else
echo "Mal hecho"
fi
