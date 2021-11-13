#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-13 05:41:25
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 06:28:41

clear

USU=""

while [ "$USU" = "" ]
do
    read -p "Introduce el nombre de un usuario: " USU
done

EXISTE=$(cat /etc/passwd | cut -d: -f1 | grep -w "$USU")

if [ ! "$EXISTE" ]
then
    echo "El usuario no existe en el sistema."
else
    sudo passwd -L "$USU" 2>/dev/null
    echo "El usuario $USU ha sido bloqueado."
fi