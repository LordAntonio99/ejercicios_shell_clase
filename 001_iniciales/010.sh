#!/bin/bash
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