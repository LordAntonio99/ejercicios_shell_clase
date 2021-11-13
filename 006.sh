#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:24:46
#

clear

PATHBUSQUEDA=""
if [ $# -eq 0 ]
then
    echo "No me has metido nada, asi que te saco a la fuerza :)"
    exit
else
    for PARA in $*
    do
        . 006_1.sh "$PARA"
    done
fi