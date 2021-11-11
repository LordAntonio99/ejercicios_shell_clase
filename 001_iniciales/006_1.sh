#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:28:56
#

for PARA in $*
do
    if [ -d "$PARA" ]
    then
        CURRPATH=$PWD
        PATHBUSQUEDA="$CURRPATH/$PARA":"$PATHBUSQUEDA" 
        echo "$CURRPATH/$PARA" >> listado.txt
    else
        echo "$PARA no es un directorio"
    fi
done