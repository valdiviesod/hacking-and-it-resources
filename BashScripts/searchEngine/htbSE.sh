#!/bin/bash

#Buscador basado en las maquinas de HackTheBox realizadas por s4vitar contenidas en su web htbmachines.github.io

#Message colors 
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

#PLantilla para capturar ctrl_c
ctrl_c()
{
  echo -e "\n${redColour}[!]Saliendo...\n"
  tput cnorm; exit 1
}

trap ctrl_c INT

#Ocultar cursor
tput civis

#Commands
helpPanel ()
{
  echo -e "\nBienvenido al panel de ayuda, $(whoami)...
  Parametros que recibe el script:
  ${yellowColour} -h ${endColour} para abrir el panel de ayuda 
  ${yellowColour} -m ${endColour}${greenColour} nombre de la maquina ${endColour} para buscar una maquina por nombre 
  ${yellowColour} -u ${endColour} para actualizar la lista de maquinas" 
  
  
}

searchMachine ()
{
  machine="$1"
  echo "[*] test de busqueda para la maquina $machine"
}

machinesUrl="https://htbmachines.github.io/bundle.js"

updateMachines()
{ 
  curl -s -X GET $machinesUrl | js-beautify > machines.js
  if [[ $(echo $?) -eq 0 ]]; then
    echo -e "\n${greenColour}[+] Actualizacion exitosa"
    else
      echo -e "${redColour}[!] Actualizacion fallida"
      ctrl_c    
  fi
}

updateEngine ()
{
if [[ ! -f machines.js ]]; then    
  updateMachines
else
  curl -s -X GET $machinesUrl | js-beautify > .machinestmp.js  
  md5temp="$(md5sum .machinestmp.js | awk '{print $1}')"
  md5def="$(md5sum machines.js | awk '{print $1}')"

  if [[ "$md5def" == "$md5temp" ]]; then 
  echo -e "\n${greenColour}[*] El archivo machines.js ya existe y esta actualizado...Saliendo..."
  tput cnorm
  exit 0 
  else
    updateMachines
  fi
fi
}

#Indicadores
declare -i parameterCounter=0

#: -> para recibir argumentos
#OPTARG -> recibir el argumento
while getopts "m:hu" arg; do
  case "$arg" in
    m) machine=$OPTARG; let parameterCounter+=1
    ;;
    u) let parameterCounter+=2
    ;;  
    h) #No se llama a helpPanel porque mostraria dos veces el panel al estar tambien llamado en el if de abajo
    ;;
  esac
  
done

#-eq -> equal (recomendado para valores numericos en vez de "==")
#-ne -> not equal
#-gt -> greater than
#-lt -> less than
if [[ $parameterCounter -eq 1 ]]; then
  searchMachine $machine
elif [[ $parameterCounter -eq 2 ]]; then
  updateEngine
else
  helpPanel
fi


#Recuperar cursor
tput cnorm

sleep 1
