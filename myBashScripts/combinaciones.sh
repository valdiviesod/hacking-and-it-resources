#!/bin/bash

# Generar todas las combinaciones posibles
for ((a=0; a<=9; a++))
do
    for ((b=0; b<=9; b++))
    do
        for ((c=0; c<=9; c++))
        do
            for ((d=0; d<=9; d++))
            do
		echo $a$b$c$d >> $1 &
            done; wait
        done
    done
done
