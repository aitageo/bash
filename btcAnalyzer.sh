#!/bin/bash

#Autor: aitageo
#Colours
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
	echo -e "\n\n${redColour}[*] Saliendo...\n${endColour}"
  exit 1
}
function helpPanel(){
	echo -e "\n${yellowColour}[*]uso ./getshell.sh${endColour}\n"
    sleep 1;
	echo -e "\n${purpleColour}[u]${endColour}${yellowColour}Direccion  Url${endColour}"
	echo -e "\n${blueColour}[i]${endColour}${grayColour}Ejemplo .getshell.sh -u http://127.0.0.1:8080/shell.php${endColour}\n"

}
#main function
declare -i parameter_counter=0;while getopts ":u:h" arg; do
 case $arg in
    u) url=$OPTARG; let parameter_counter+=1;;
		h) helpPanel;;
	esac
done
if [ $parameter_counter -ne 1 ]; then
helpPanel
else
	echo "hola, la ejecucion es correcta"
fi
