#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-13 12:09:31
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 12:42:56

clear

USU=""
while [ "$USU" = "" ]
do
    read -p "Introduce el nombre de usuario a eliminar: " USU
done

ALTA=$(grep -w "^$USU" /etc/passwd)

if [ ! "$ALTA" ]
then
    echo "El usuario $USU no esta dado de alta en el sistema"
else
    CONECTADO=$(who | grep -w $USU)
    if [ "$CONECTADO" ]
    then
        sudo pkill -KILL -u $USU
    fi
    sudo userdel -r $USU
fi