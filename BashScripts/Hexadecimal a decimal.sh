**Valores hex sacados de /cat/proc/net/tcp**
*Ingresado por consola, no en un fichero*

echo "
19C8


A97F


99D0


A4D2


8BDA


BC80


19C8" | while read line; do echo "[+] Puerto $(echo "obase=10; ibase=16; $line" | bc) ABIERTO" ; done