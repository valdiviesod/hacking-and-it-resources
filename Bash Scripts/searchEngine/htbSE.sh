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
  ${yellowColour} -o ${endColour}${greenColour} sistema operativo ${endColour} para buscar una maquina segun su sistema operativo 
  ${yellowColour} -s ${endColour}${greenColour} skill ${endColour} para buscar una maquina por la skill que desarrolla 
  ${yellowColour} -d ${endColour}${greenColour} dificultad ${endColour} para buscar una maquina segun su dificultad (Fácil, Media, Difícil o Insane)
  ${yellowColour} -u ${endColour} para actualizar la lista de maquinas 
  ${greenColour} Puedes mezclar los parametros ${endColour}${yellowColour}-o -d${endColour}${greenColour} para buscar por sistema operativo y dificultad ${endColour}
  ${greenColour} Si necesita entrar una skill de mas de una palabra insertela entre comillas dobles ${endColour}"

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
  echo -e "${yellowColour}[+] Comprobando si hay actualizaciones..."

  if [[ ! -f machines.js ]]; then      
  updateMachines
else
  curl -s -X GET $machinesUrl | js-beautify > .machinestmp.js  
  md5temp="$(md5sum .machinestmp.js | awk '{print $1}')"
  md5def="$(md5sum machines.js | awk '{print $1}')"

  if [[ "$md5def" == "$md5temp" ]]; then 
  echo -e "\n${greenColour}[*] No hay actualizaciones...Saliendo..."
  rm .machinestmp.js
  tput cnorm
  exit 0 
  else
    updateMachines
  fi
fi
}

searchMachine ()
{
  machine="$1"
  machineChecker="$(cat machines.js | awk "/name: \"$machine\"/,/youtube:/" | grep -vE "id:|sku:" | tr -d '"' | tr -d ',' | sed 's/^ *//')"
  if [[ $machineChecker ]]; then
    echo -e "${yellowColour}[+] Propiedades de la maquina $machine:${endColour}"
    cat machines.js | awk "/name: \"$machine\"/,/youtube:/" | grep -vE "id:|sku:" | tr -d '"' | tr -d ',' | sed 's/^ *//' 
    else
      echo -e "${redColour}[!]La maquina que buscas no existe o esta mal escrita... "
  fi
}

searchOs ()
{
  os="$1"
  osChecker=$(cat machines.js | grep "so: \"$os\"" -B 4 | grep -vE "id:|sku:|so:|resuelta:|lf.push" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//' | column)
  if [[ $osChecker ]]; then
    echo -e "${yellowColour}[+] Filtrando las maquinas basadas en $os:${endColour}"
    cat machines.js | grep "so: \"$os\"" -B 4 | grep -vE "id:|sku:|so:|resuelta:|lf.push" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//' | column
  else
    echo -e "${redColour}[!]El sistema operativo que buscas no existe o esta mal escrito... "
  fi

}

searchDif ()
{
  dif="$1"
  difChecker=$(cat machines.js | grep "dificultad: \"$dif\"" -B 5 | grep -vE "id:|sku:|so:|dificultad:|resuelta|lf.push" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//'| column)
  if [[ $difChecker ]]; then
    echo -e "${yellowColour}[+] Filtrando por la dificultad $dif:${endColour}"
    cat machines.js | grep "dificultad: \"$dif\"" -B 5 | grep -vE "id:|sku:|so:|dificultad:|resuelta|lf.push" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//' | column
  else
    echo -e "${redColour}[!]La dificultad que buscas no existe o esta mal escrita... "
  fi

}

osDif ()
{
  os="$1"
  dif="$2"
  osDifChecker=$(cat machines.js | grep "so: \"$os\"" -C 4 | grep "dificultad: \"$dif\"" -B 5 |grep -vE "id:|sku:|resuelta|dificultad|so|lf.push" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//' | column)
  if [[ $osDifChecker ]]; then
    echo -e "${yellowColour}[+] Filtrando por la dificultad $dif y el sistema operativo $os ${endColour}"
    cat machines.js | grep "so: \"$os\"" -C 4 | grep "dificultad: \"$dif\"" -B 5 |grep -vE "id:|sku:|resuelta|dificultad|so|lf.push" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//' | column
    
  else
    echo -e "${redColour}[!]La busqueda no existe o esta mal escrita... "
  fi

}

searchSkill ()
{
  
  
  skill="$*"
  skillChecker=$(cat machines.js | grep "skills:" -B 6 | grep "$skill" -i -B 6| grep -E "name:|ip:" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//' | column)
  if [[ "$skillChecker" ]]; then 
    echo -e "${yellowColour}[+] Filtrando maquinas segun la skill $skill ${endColour}"
  cat machines.js | grep "skills:" -B 6 | grep "$skill" -i -B 6| grep -E "name:|ip:" | tr -d '"' | tr -d ',' | tr -d '-' | sed 's/^ *//' | column  
  else
    echo -e "${redColour}[!]La skill no existe o esta mal escrita..."
  fi

  
}

#Indicadores
declare -i parameterCounter=0

#Compañeros
declare -i compaOs=0
declare -i compaDif=0

#: -> para recibir argumentos
#OPTARG -> recibir el argumento
while getopts "m:ho:s:ud:" arg; do
  case "$arg" in
    m) machine=$OPTARG; let parameterCounter+=1
    ;;
    u) let parameterCounter+=2
    ;;
    o) os=$OPTARG; compaOs=1; let parameterCounter+=3
    ;; 
    d) dif=$OPTARG; compaDif=1; let parameterCounter+=4
    ;; 
    s) skill=$OPTARG; let parameterCounter+=5
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
elif [[ $parameterCounter -eq 3 ]]; then
  searchOs $os
elif [[ $parameterCounter -eq 4 ]]; then
  searchDif $dif
elif [[ $parameterCounter -eq 5 ]]; then
  searchSkill $skill #Para tomar la entrada con espacios completamente
elif [[ $compaOs -eq 1  ]] && [[ $compaDif -eq 1 ]]; then
  osDif $os $dif
else
  helpPanel
fi


#Recuperar cursor
tput cnorm

sleep 1
