#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 13:31:39
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:33:46
#
clear

function conexiones {
    USUARIOS=$(who | cut -d " " -f 1)
    echo "Los usuarios conectados son:" >> $1
    echo "$USUARIOS" >> $1
    echo "Hay un total de $(echo $USUARIOS | wc -l) usuarios conectados." >> $1
    echo "Tus procesos activos son: " >> $1
    echo $(ps -la -u $USER) >> $1

}

if [ $# -eq 0 ]
then
    FICH=""
    while [ "$FICH" = "" ]
    do
        read -p "Introduce el fichero: " FICH
    done
else 
    FICH=$1
fi
touch $FICH
VEZ=1
VECES=3
while [ $VEZ -le $VECES ]
do
    USUARIOS=$(who | cut -d " " -f 1)
    echo "Los usuarios conectados son:" >> $FICH
    echo "$USUARIOS" >> $FICH
    echo "Hay un total de $(echo $USUARIOS | wc -l) usuarios conectados." >> $FICH
    echo "Tus procesos activos son: " >> $FICH
    echo $(ps -la -u $USER) >> $FICH
    sleep 300
    VEZ=$[$VEZ+1]
done

