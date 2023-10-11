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
decompressed_filename="$(7z l $first_file | tail -n 3 | head -n 1 | awk 'NF{print $NF}' )"

7z x $first_file &>/dev/null

while [[ $decompressed_filename ]]; do #Mientras el archivo sea descomprimible 
  echo -e "\n[+] $decompressed_filename descomprimido\n"
  7z x $decompressed_filename &>/dev/null
  decompressed_filename="$(7z l $decompressed_filename 2>/dev/null | tail -n 3 | head -n 1 | awk 'NF{print $NF}' )" #Se reemplaza el archivo a descomprimir por el nuevo que se descomprimio previamente, se elimina el error que puede dar al momento que el archivo no sea comprimible
  
done

#Primer testeo
#echo -e "\n[+]El primer archivo es $first_file\n"
#echo -e "\n[+]El siguiente archivo será $next_decompressed_filename\n"

#Espera para que tome mi entrada de ctrl_c
#sleep 5
