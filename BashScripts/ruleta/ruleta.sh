#!/bin/bash

#Simulador de ruleta junto a algunas tecnicas para "generar beneficio"

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
  echo -e "\nBienvenido al panel de ayuda de la ruleta, $(whoami)...
  Parametros que recibe:
  ${yellowColour} -h ${endColour} para abrir el panel de ayuda
  ${yellowColour} -d ${endColour}${greenColour} dinero ${endColour} para ingresar una cantidad de dinero
  ${yellowColour} -t ${endColour}${greenColour} tecnica ${endColour} para usar una de las tecnicas (laubrouchereI o martingala)"
  ctrl_c
}

martingala ()
{
  echo -e "Dinero actual: ${greenColour}$dinero${endColour}"
  echo -n "[+] Cuanto dinero vas a apostar la primera vez?: " && read -r apuesta
  echo -n "[+] Juegas par o impar?: " && read -r par_impar
  echo -e "Apostaste ${yellowColour}$apuesta${endColour} al ${yellowColour}$par_impar${endColour}"
  money=$(($dinero-$apuesta))
  echo -e "Saldo: ${yellowColour}$money${endColour}"
  backupApuesta=$apuesta

  while true; do
    echo -e "\nApostaste ${yellowColour}$apuesta${endColour} y tienes ${yellowColour}$money${endColour}"
    random="$(($RANDOM % 37))"
    echo -e "[*] La bola ha caído en el numero ${yellowColour}$random${endColour}"
    perdida=$(($apuesta*2))
    beneficio=$(($apuesta*2))

    if [[ $par_impar=="par"  ]]; then      
      if [[ $((random % 2 )) -eq 0 ]]; then
        if [[ $random -eq 0 ]]; then
          echo -e "${redColour}[-] ¡Pierdes!..."
          echo -e "[-] Perdiste ${greenColour}$perdida${endColour}"
          money=$(($money-$perdida))
          echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
          apuesta=$(($apuesta*2))

        else
           echo -e "[+]${greenColour} El numero es par... ¡Ganas!${endColour}"
           echo -e "[+] Ganaste ${greenColour}$beneficio${endColour}"
           money=$(($money+$beneficio))
           echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
        fi
      else
         echo -e "[-]${redColour} El numero es impar... ¡Pierdes!${endColour}"  
         echo -e "[-] Perdiste ${greenColour}$perdida${endColour}"
         money=$(($money-$perdida))
         echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
         apuesta=$(($apuesta*2))
      fi
  fi

  if [[ $money -le 0 ]]; then
    echo -e "${redColour}[!] Perdiste todo... ¡Ludópata!"
    ctrl_c
    
  fi

  sleep 3
    
  done

}


while getopts "d:t:h" arg; do
  case "$arg" in
    d) dinero=$OPTARG;
    ;;
    t) tecnica=$OPTARG; 
    ;;
    h) 
    ;;
  esac
done

if [ $dinero ] && [ $tecnica ]; then
  if [ "$tecnica" == "martingala" ];then
    martingala
  else
    echo -e "${redColour}[!]La tecnica que quieres usar no existe o esta mal escrita"
  fi
else
  helpPanel
fi


#Recuperar cursor
tput cnorm

sleep 1
