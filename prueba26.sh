#!/bin/bash

numero=1
read -p "ingresa un numero " numero
while [ $numero -ne 20 ]
   do 
    numero=$(( numero +1 ))
    if [ $numero -eq 10 ];then
       break;
     echo "el numero es : $numero"
fi
done
     
