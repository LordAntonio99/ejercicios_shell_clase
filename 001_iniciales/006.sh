#!/bin/bash
clear
PATHBUSQUEDA=""
if [ $# -eq 0 ]
then
    echo "No me has metido nada, asi que te saco a la fuerza :)"
    exit
elif [ $# -ne 0 ]
then
    for PARA in $*
    do
        source 006_1.sh "$PARA"
    done
fi