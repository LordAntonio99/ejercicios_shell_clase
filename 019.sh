#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 18:12:23
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 18:18:01

clear

for TRAY in $*
do
    if [ -f "$TRAY" ]
    then
        chmod u+x "$TRAY"
        echo "Se han asignado permisos de ejecucion a $TRAY"
    else
        echo "$TRAY no es un fichero ordinario o no existe"
    fi
done