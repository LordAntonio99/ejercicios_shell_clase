#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:21:03
#
source "funciones.sh"

clear

NOMBREDIR="dir1"
NOMBREFICH="ficheros.txt"
DIR="$NOMBREDIR/$NOMBREFICH"
ejecutando
if [ ! -d "$NOMBREDIR" ]
then
    mkdir $NOMBREDIR
    echo "$NOMBREDIR se ha creado correctamente."
    sleep 1
    ls /dev/t*[0-9] > $DIR
    cat /etc/passwd | sort -k6 >> $DIR
else
    echo "El directorio $NOMBREDIR ya existe."
    sleep 1
fi
more $DIR