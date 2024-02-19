#!/bin/bash

# Plantilla para capturar ctrl_c
ctrl_c() {
  echo -e "\n[!] Saliendo...\n"
  tput cnorm
  exit 1
}

trap ctrl_c INT

for port in $(seq 31000 32000); do
  if (echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null; then
    echo "[*] El puerto $port está abierto..."
    echo | openssl s_client -connect localhost:$port >/dev/null 2>&1
    if [ $? -eq 0 ]; then #Si el codigo de estado es exitoso
      echo "[+] Conexión exitosa por SSL en el puerto $port"
    else
      echo "[-] Conexión fallida por SSL en el puerto $port"
    fi
  fi
done

tput cnorm
