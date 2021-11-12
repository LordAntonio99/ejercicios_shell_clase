#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 13:21:26
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 13:30:47

clear

mkdir $HOME/prueba
cp -r $HOME/* $HOME/prueba 2>/dev/null
mkdir $HOME/prueba/seguridad
cp -r $HOME/Documents/ejercicios_shell_clase/001_iniciales/* $HOME/prueba/seguridad 2>/dev/null

FICHERO=""
COMPROBACION=""

while [ "$COMPROBACION" != "NO" ]
do
    read -p "Introduce el nombre de un fichero del directirio prueba: " FICHERO
    COMPROBACION=$(echo $FICHERO | tr [a-z] [A-Z])
    if [ -e "$FICHERO" -a "$COMPROBACION" != "NO" ]
    then
        chmod u-w $FICHERO
        chmod g+rx $FICHERO
    fi
done

find $HOME/prueba -perm -u-r -perm -u+w > $HOME/Documents/ejercicios_shell_clase/001_iniciales/leidos.txt
cat $HOME/Documents/ejercicios_shell_clase/001_iniciales/leidos.txt