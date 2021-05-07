#!/bin/bash
#por aitageo

limite=0
i=100


while true
  [ $i -gt $limite ]; do #el -gt significa que es mayor
  sleep 1
  i=$(( i -1  ))
  echo "$i"
done
