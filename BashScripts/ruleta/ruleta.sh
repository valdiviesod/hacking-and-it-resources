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
  echo -n "[+] Cuanto dinero vas a apostar la primera vez?: " && read apuesta
  echo -n "[+] Juegas par o impar?: " && read par_impar
  echo -e "Tu apuesta inicial es:${yellowColour}$apuesta${endColour} al ${yellowColour}$par_impar${endColour}"
  backupApuesta=$apuesta
  money=$dinero
  jugadasMalas=""

  while true; do
    echo -e "Apuestas ${yellowColour}$apuesta${endColour}"
    random="$(($RANDOM % 37))"
    echo -e "[*] La bola ha caído en el numero ${yellowColour}$random${endColour}"
    perdida=$(($apuesta*2))
    beneficio=$(($apuesta*2))

    
    if [[ ! $money -le 0 ]];then
      if [[ $par_impar == "par"  ]]; then      
        if [[ $((random % 2 )) -eq 0 ]]; then
          if [[ $random -eq 0 ]]; then
            echo -e "${redColour}[-] ¡Pierdes!..."
            echo -e "[-] Perdiste ${greenColour}$perdida${endColour}"
            money=$(($money-$perdida))
            echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
            apuesta=$(($apuesta*2))

          else
             echo -e "[+]${greenColour} ¡Ganas!${endColour}"
             echo -e "[+] Ganaste ${greenColour}$beneficio${endColour}"
             money=$(($money+$beneficio))
             echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
          fi
        else
           echo -e "[-]${redColour} ¡Pierdes!${endColour}"  
           echo -e "[-] Perdiste ${greenColour}$perdida${endColour}"
           money=$(($money-$perdida))
           echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
           apuesta=$(($apuesta*2))
           jugadasMalas+="$random "
        fi
    else
        #Impares
        if [[ $((random % 2 )) -eq 1 ]]; then
          if [[ $random -eq 0 ]]; then
            echo -e "${redColour}[-] ¡Pierdes!..."
            echo -e "[-] Perdiste ${greenColour}$perdida${endColour}"
            money=$(($money-$perdida))
            echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
            apuesta=$(($apuesta*2))

          else
             echo -e "[+]${greenColour} ¡Ganas!${endColour}"
             echo -e "[+] Ganaste ${greenColour}$beneficio${endColour}"
             money=$(($money+$beneficio))
             echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
          fi
        else
           echo -e "[-]${redColour} ¡Pierdes!${endColour}"  
           echo -e "[-] Perdiste ${greenColour}$perdida${endColour}"
           money=$(($money-$perdida))
           echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
           apuesta=$(($apuesta*2))
           jugadasMalas+="$random "
        fi

    fi
    if [[ $money -le 0 ]]; then
      echo -e "${redColour}[!] Perdiste todo... ¡Ludópata! 
      Jugadas malas: $jugadasMalas"
      
      ctrl_c
      
    fi
  fi

    sleep 2
    
  done

}

laubrouchereI() {
  echo -e "Dinero actual: ${greenColour}$dinero${endColour}"
  echo -n "[+] Juegas par o impar?: " && read par_impar

  declare -a secuencia=(1 2 3 4)
  echo -e "[!] Comienzas con la secuencia ${yellowColour}${secuencia[@]}${endColour}"
  apuesta=$((${secuencia[0]} + ${secuencia[-1]}))
  money=$(($dinero - $apuesta))
  jugadasMalas=""

  #unset secuencia[0]
  #unset secuencia[-1]

  while true; do
    echo -e "Apuestas ${yellowColour}$apuesta${endColour}"
    random="$(($RANDOM % 37))"
    echo -e "[*] La bola ha caído en el numero ${yellowColour}$random${endColour}"
    beneficio=$(($apuesta * 2))
    perdida=$(($apuesta * 2))

    if [[ ! $money -le 0 ]]; then
      if [[ $par_impar == "par" ]]; then
        if [[ $((random % 2)) -eq 0 ]]; then
          if [[ $random -eq 0 ]]; then
            echo -e "${redColour}[-] ¡Pierdes!..."
            echo -e "[-] Perdiste ${greenColour}$perdida${endColour}"
            money=$(($money - $perdida))
            echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
            unset secuencia[0]
            unset secuencia[-1] 2>/dev/null
            secuencia=(${secuencia[@]})
            echo -e "Secuencia actual: ${yellowColour}${secuencia[@]}${endColour}"
            if [ ${#secuencia[@]} -ne 1 ] && [ ${#secuencia[@]} -ne 0  ]; then 
              apuesta=$((${secuencia[0]} + ${secuencia[-1]}))
            elif [ ${#secuencia[@]} -eq 1 ]; then
              apuesta=${secuencia[0]}
            else
              echo "Restableciendo secuencia..."
              secuencia=(1 2 3 4)
              secuencia=(${secuencia[@]})
              apuesta=$((${secuencia[0]} + ${secuencia[-1]}))
              echo -e "Tu secuencia ahora es ${yellowColour}[${secuencia[@]}]${endColour}"
            fi
          else
            echo -e "[+]${greenColour} ¡Ganas!${endColour}"
            money=$(($money + $beneficio))
            echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
            secuencia+=($apuesta)
            secuencia=(${secuencia[@]})
            echo -e "Secuencia actual: ${yellowColour}${secuencia[@]}${endColour}"
            if [ ${#secuencia[@]} -ne 1 ] && [ ${#secuencia[@]} -ne 0  ]; then 
              apuesta=$((${secuencia[0]} + ${secuencia[-1]}))
            elif [ ${#secuencia[@]} -eq 1 ]; then
              apuesta=${secuencia[0]}
            else
              echo "Restableciendo secuencia..."
              secuencia=(1 2 3 4)
              secuencia=(${secuencia[@]})
              apuesta=$((${secuencia[0]} + ${secuencia[-1]}))
              echo -e "Tu secuencia ahora es ${yellowColour}[${secuencia[@]}]${endColour}"
            fi
          fi
        else
          echo -e "[-]${redColour} ¡Pierdes!${endColour}"
          money=$(($money - $perdida))
          echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
          unset secuencia[0]
          unset secuencia[-1] 2>/dev/null
          secuencia=(${secuencia[@]})
          echo -e "Secuencia actual: ${yellowColour}${secuencia[@]}${endColour}"
          if [ ${#secuencia[@]} -ne 1 ] && [ ${#secuencia[@]} -ne 0  ]; then 
            apuesta=$((${secuencia[0]} + ${secuencia[-1]}))
          elif [ ${#secuencia[@]} -eq 1 ]; then
            apuesta=${secuencia[0]}
          else
            echo "Restableciendo secuencia..."
            secuencia=(1 2 3 4)
            secuencia=(${secuencia[@]})
            apuesta=$((${secuencia[0]} + ${secuencia[-1]}))
            echo -e "Tu secuencia ahora es ${yellowColour}[${secuencia[@]}]${endColour}"
          fi
        fi
      else
        # Impares
        if [[ $((random % 2)) -eq 1 ]]; then
          if [[ $random -eq 0 ]]; then
            echo -e "${redColour}[-] ¡Pierdes!..."
            money=$(($money - $perdida))
            echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
          else
            echo -e "[+]${greenColour} ¡Ganas!${endColour}"
            money=$(($money + $beneficio))
            echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
          fi
        else
          echo -e "[-]${redColour} ¡Pierdes!${endColour}"
          money=$(($money - $perdida))
          echo -e "[!] Saldo actual: ${yellowColour}$money${endColour}"
          jugadasMalas+="$random "
        fi
      fi
    
    else
      echo -e "${redColour}[!] Perdiste todo... ¡Ludópata!
      Jugadas malas: $jugadasMalas"
      ctrl_c
    fi

    sleep 2
  done
}


while getopts "d:t:l:h" arg; do
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
  elif [ "$tecnica" == "laubrouchereI" ];then
    laubrouchereI
  else
    echo -e "${redColour}[!]La tecnica que quieres usar no existe o esta mal escrita"
  fi
else
  helpPanel
fi


#Recuperar cursor
tput cnorm

sleep 1
