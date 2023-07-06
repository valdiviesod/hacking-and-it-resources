#!/bin/bash
 
#PLantilla para capturar ctrl_c
ctrl_c()
{
  echo -e "\n[!]Saliendo...\n"
  tput cnorm; exit 1
}

trap ctrl_c INT

#Ocultar cursor
tput civis

for i in $(seq 1 254); do
  timeout 1 bash -c "ping -c 1 $1.$i &>/dev/null" && echo "[+] Host $1.$i activo..." & 
done; wait   

#Recuperar cursor
tput cnorm 
