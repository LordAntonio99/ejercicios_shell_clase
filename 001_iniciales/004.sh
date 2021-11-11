#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:25:01
#

source "funciones.sh"

clear

NOMBRE=""
while [ "$NOMBRE" = "" ]
do
    read -p "Introduce un nombre de usuario:"$'\n>> ' NOMBRE
    clear
done

ejecutando
PASSWD=$(grep -w "^$NOMBRE" /etc/passwd)
if [ $? -ne 0 ]
then
    echo "El usuario introducido no existe"
else
    echo "Buenos dias $NOMBRE, tu usuario aparece en el sistema."
    sleep 3
    env | more
fi