#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 13:20:19
#

clear
DIRPRUEBA="$HOME/prueba"
DIRSEGURIDAD="$DIRPRUEBA/seguridad"
DIRSHELLSCRIPT="$PWD"

# Borrar el directorio recursivamente si existe
if [ -d $DIRPRUEBA ]
then
    rm -rf "$DIRPRUEBA"
fi
# Crear las subcarpetas y mocher archivos
mkdir "$DIRPRUEBA"
cp -r $HOME/* $DIRPRUEBA 2>/dev/null
mkdir "$DIRSEGURIDAD"
cp -r $DIRSHELLSCRIPT/* $DIRSEGURIDAD

# Comprobar archivo y modificar permisos
FICHERO=""
SALIDA="NO"
while [ "$FICHERO" != "$SALIDA" ]
do
    read -p "Introduce el nombre de un fichero de $DIRPRUEBA: "$'\n>> ' FICHERO
    if [ $FICHERO = $SALIDA ]
    then
        break
    elif [ -e $DIRSEGURIDAD/$FICHERO ]
    then
        chmod u-w $FICHERO
        chmod g+w $FICHERO
    fi
done

rm $DIRPRUEBA/* 2>/dev/null
ls -r $DIRPRUEBA > $DIRSHELLSCRIPT/quedan.txt
cat $DIRSHELLSCRIPT/quedan.txt