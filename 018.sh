#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 18:05:34
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 18:08:08

if [ $# -eq 0 ]
then
    FICHERO=""
    while [ "$FICHERO" = "" ]
    do
        read -p "Introduce el nombre de un fichero: " FICHERO
    done
else
    FICHERO=$1
fi

./018_1.sh $FICHERO