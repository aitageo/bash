#!/bin/bash
#por aitageo

greenColour="\e[0;32m\033[1m"
endColour="\033[0m\e[0m"
redColour="\e[0;31m\033[1m"
blueColour="\e[0;34m\033[1m"
yellowColour="\e[0;33m\033[1m"
purpleColour="\e[0;35m\033[1m"
turquoiseColour="\e[0;36m\033[1m"
grayColour="\e[0;37m\033[1m"
edad=0

trap ctrl_c INT

function ctrl_c(){
      echo -e "\n\n${redColour}[*]Saliendo...${endColour}\n"   
      exit 1
      tput cnorm
}

while true;
do
echo -e "${blueColour}Programa para determinar tu etapa en la vida${endColour}"
read -p "ingresa la edad: " edad

if [ $edad -le 13 ];then
echo "eres un infante"

elif [[ $edad -ge 14 && $edad -le 17 ]]; then
echo "la persona es adolescente" 

elif [[ $edad -eq 18 ||  $edad -eq 19 ]] ; then 
echo "ya tiene la mayoria de edad"

elif [ $edad -eq 20 ]; then 
echo "es un adulto joven"

else 
    echo "eres mayor"

fi
done
