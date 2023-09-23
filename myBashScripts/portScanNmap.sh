#!/bin/bash

for port in $(seq 31000 32000); do
  (echo '' > /dev/tcp/127.0.0.1/$port) 2>/dev/null && {
    echo "[+] El puerto $port está abierto"
    (nmap -p $port --script ssl-enum-ciphers 127.0.0.1) | grep -q "443/open" && echo "[+] SSL está habilitado en el puerto $port"
  } &
done

wait

