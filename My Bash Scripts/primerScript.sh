#!/bin/bash

#Ejemplo de uso de variables colours
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

echo -e "\nEsta es tu ip ${redColour}$(ip a | grep "wlp4s0" | tail -n 1 | awk '{print $2}' | cut -d '/' -f 1)${endColour}\n"

