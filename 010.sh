#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:29:02
#

clear
INPUT=""

while [ "$INPUT" = "" ]
do
    read -p "Introduce las iniciales de usuario: "$'\n>> ' INPUT
done

USUARIOS=$(who | cut -d" " -f1 | grep "^$INPUT")
NUMUSUARIOS=$(echo "$USUARIOS" | wc -l)

if [ "$USUARIOS" = "" ]
then
    echo "No hay ningun usuario que empiece por dichas credenciales y/o este conectado."
else
    echo "Los usuarios conectados con dichas iniciales son: "
    echo $USUARIOS 
fi