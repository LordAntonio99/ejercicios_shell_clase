#!/bin/bash
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

if [ -f "$ARCH" ]
then
    clear
    chmod o+x "$ARCH"
    echo "Los permisos de $ARCH se han actualizado correctamente"
else
    clear
    echo "El fichero no existe o no es ordinario."
fi

