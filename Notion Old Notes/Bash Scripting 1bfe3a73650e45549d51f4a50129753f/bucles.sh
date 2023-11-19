#!/bin/bash

echo -n "Numero limite: "
read lim

for (( i = 0; i <= $lim; i++)); do
echo "Numero: " $i
done
