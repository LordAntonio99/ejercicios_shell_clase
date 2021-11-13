#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 18:18:34
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 18:29:28

clear
if [ ! -d "copia" ]
then
    mkdir copia
fi

if [ $# -eq 0 ]
then
    TRAY=""
    while [ "$TRAY" = "" ]
    do
        read -p "Introduce la trayectoria de un directorio: " TRAY
    done
else
    TRAY=$1
fi

PERMISOS=$(ls -ld "$TRAY" | cut -d " " -f 1)
COMPROBAR=$(expr substr "$PERMISOS" 4 1)

if [ -d "$TRAY" -a "$COMPROBAR" == "x" ]
then
    cp -r $TRAY/* copia
else
    echo "El directorio introducido no es valido"
fi
