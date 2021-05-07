#!/bin/bash
#por aitageo

read -t 3 -p "dime tu nombre: " nombre
if [ -z $nombre ];then
   echo
   echo "dilo en menos de 3 segundos"
   else
      echo $nombre
fi
