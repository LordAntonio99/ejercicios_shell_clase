#!/bin/bash
## Si existe el directorio pasado, aniadir al fichero listado.txt
if [ -d "$1" ]
then
    CURRPATH=$(pwd)
    PATHBUSQUEDA="$CURRPATH/$1":"$PATHBUSQUEDA"
    echo "$CURRPATH/$1" >> listado.txt
else
    exit
fi