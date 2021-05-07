#!/bin/bash
#por aitageo


read -p "ingrese archivo a cifrar:  " archivo

if [ -f $archivo ];then #-f de fichero -d de directorio
   gpg -c $archivo
   rm -rf $archivo
   echo "archivo cifrado y original borrado"
else
   echo "el archivo $archivo no existe"
fi

