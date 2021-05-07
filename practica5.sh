#!/usr/bin/bash
#por aitageo

declare -r pi=13.14.16 #asi se declara una constante en bash
listado=$(ls)
echo  -e "$listado\t"
echo $pi
MAX_TRY=3
(( MAX_TRY++ ))
echo $MAX_TRY
declare -r MAX_TRY=3
# comentada esta linea echo $MAX_TRY

#da error de solo lectura por el declare -r (( MAX_TRY++ ))

function mi_primera_funcion_enBash(){
   echo "hola aitageo"
   local var2="dentro"
     echo $var2
}

mi_primera_funcion_enBash
#asi se llama una funcion en bash


function prueba(){
   return 0
}
   prueba
   echo $?
distros_linux=(Ubuntu,  Kaly,  Debian)
  echo "${distros_linux[*]}"
arregloNumeros=(1 2 3 4 5 6 7 )
echo "${arregloNumeros[*]}"
for i in "${distros_linux[@]}"
   do
echo $i
done
distros_linux=(Parrot "${distros_linux[@]}") # se pueden añadir al principio o al final,antes o despues de las comillas
 echo ${distros_linux[*]}
distros_linux=("${distros_linux[@]:0:2}" Parrot "${distros_linux[@]:3}")
echo ${distros_linux[*]}
distros_linux=("${distros_linux[@]:0:2}" Kaly "${distros_linux[@]:3}")
echo ${distros_linux[*]}
