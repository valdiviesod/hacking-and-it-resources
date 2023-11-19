#!/bin/bash

echo -n "Numero: "
read num

if [ $num -ge 5 -a $num -le 10 ]; then
echo "Numero en rango"
else
echo "Numero fuera del rango"
fi

# -o / || -> OR
# -a -> AND
