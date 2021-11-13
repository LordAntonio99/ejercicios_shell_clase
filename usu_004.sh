#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-13 06:44:25
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 08:02:09

clear

USU=""

while [ "$USU" = "" ]
do
    read -p "Introduce un nombre de usuario: " USU
done

COMPROBAR=$(cut -d ":" -f 1 /etc/passwd | grep -w $USU)

if [ ! "$COMPROBAR" ]
then
    echo "El usuario no existe"
else
    DIRECTORIO=""
    while [ "$DIRECTORIO" = "" ]
    do 
        read -p "Introduce el nuevo directorio para $USU: " DIRECTORIO
    done
    if [ ! -d "$DIRECTORIO" ]
    then
        sudo mkdir -p $DIRECTORIO
    fi
    sudo usermod -d $DIRECTORIO -m $USU 2>/dev/null
fi