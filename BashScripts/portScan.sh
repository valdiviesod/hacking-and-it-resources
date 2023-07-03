#!/bin/bash
 
#PLantilla para capturar ctrl_c
ctrl_c()
{
  echo -e "\n[!]Saliendo...\n"
  exit 1 #Salida forzada
}

trap ctrl_c INT

for port in $(seq 1 65535); do
  (echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null && echo "[+] El puerto $port esta abierto" && (lsof -i:$port) &  
done; wait #Espera que los hilos finalicen


