#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:39:56
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:17:17
#

source "funciones.sh"
clear

ARCH=""

if [ $# -eq 0 ]
then
    while [ "$ARCH" = "" ]
    do
        clear
        read -p "Introduce el nombre de un archivo: "$'\n>> ' ARCH
    done
else
    ARCH="$1"
fi

ejecutando

if [ -f "$ARCH" ]
then
    clear
    chmod u+x "$ARCH"
    echo "Los permisos de $ARCH se han actualizado correctamente"
else
    clear
    echo "El fichero no existe o no es ordinario."
fi
