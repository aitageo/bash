#!/bin/bash
#por aitageo

declare fecha=`date +"%d%m%y"`
function helpanel(){
    echo -e "uso: ./getopts.sh"
    exit 0
}

function dia(){
     echo "el dia de hoy es: $fecha "
}

function saludo(){
     echo -e "hola aitageo"
}

declare -i contador=0;
while getopts ":s:h:d:" arg; 
do 
 case $arg in
     s)saludo=$OPTARG;contador+=1;;
     H)helpanel;;
     d)dia=$OPTARG;contador=2;;
esac
 done
if [ $contador -ne 1 ]; then
   helpanel
if [ $contador -eq 2 ]; then
   dia
fi
else
   saludo
fi
