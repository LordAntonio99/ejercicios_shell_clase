#!/bin/bash
for PARA in $*
do
    if [ -d "$PARA" ]
    then
        CURRPATH=$(pwd)
        PATHBUSQUEDA="$CURRPATH/$PARA":"$PATHBUSQUEDA" 
        echo "$CURRPATH/$PARA" >> listado.txt
    else
        echo "$PARA no es un directorio"
    fi
done