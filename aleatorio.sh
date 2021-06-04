#!/bin/bash
#por aitageo
a=`echo $(($RANDOM%10))`
   echo "$a"
limite=10
let b=5*3
    echo "el resultado de b es $b" 

while [ $a -lt  $limite ]
   do
     echo "iterando"
     let a=$a+1
done
if [ $a -gt 7 ]; then 
     echo "$a es mayor"
else
     echo "$a es menor"
fi
