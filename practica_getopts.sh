#!/bin/bash
#por aitageo practica getopts

#paleta de colores
greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"

trap ctrl_c INT


function ctrl_c(){
   echo -e "\n${redColour}[*]Saliendo...${endColour}"
   exit 1
   tput cnorm
}

function help_panel(){
  echo -e "\n${RedColour}Uso -> ./practica_getopts.sh${endColour}"
  for i in $(seq 1 80);do echo -ne "${redColour}-";done;echo -ne "${enColour}"
  echo -e "\n\n\t${grayColour}[-e]${endColour}Modo exploracion${endColour}}"
}


#contador=0
#while [ $contador -ne 10 ]; do
#  echo -e "${blueColour}funcionando${endColour}"
#  sleep 1;
#  contador=$(( contador+=1 ))
#done

contador=0;while getopts "e:h:" arg; do #getopts pide argumentos obligatorios
  case $arg in
    e) exploration_mode=$OPTARG;let contador+=1;;# en optarg se gurda lo que se ingrese como argumento,
    h) helpanel;;
  esac;
done;
tput civis

if [ $contador -eq 0 ];then
   help_panel #aqui se esta llamando la funcion help_panel

fi
