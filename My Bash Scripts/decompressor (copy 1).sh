#!/bin/bash

#funcion para capturar ctrl_c
ctrl_c()
{
  echo -e "\n[!]Saliendo...\n"
  exit 1 #Salida forzada
}

#Ctrl + c 
trap ctrl_c INT

first_file="$1"
next_decompressed_filename="$(7z l $first_file | tail -n 3 | head -n 1 | awk 'NF{print $NF}' )"



#Primer testeo
#echo -e "\n[+]El primer archivo es $first_file\n"
#echo -e "\n[+]El siguiente archivo será $next_decompressed_filename\n"

#Espera para que tome mi entrada de ctrl_c
sleep 5
