#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 07:51:23
#

clear
DIRPRUEBA="$HOME/prueba"
DIRSEGURIDAD="$DIRPRUEBA/seguridad"
DIRSHELLSCRIPT="$PWD"

# Borrar el directorio recursivamente si existe
if [ -d $DIRPRUEBA ]
then
    sudo rm -rf "$DIRPRUEBA"
fi
# Crear las subcarpetas y mocher archivos
mkdir "$DIRPRUEBA"
sudo cp $HOME/* $DIRPRUEBA 2>/dev/null
mkdir "$DIRSEGURIDAD"
sudo cp -r $DIRSHELLSCRIPT/* $DIRSEGURIDAD 2>/dev/null

# Comprobar archivo y modificar permisos
FICHERO=""
SALIDA="NO"
while [ "$FICHERO" != "$SALIDA" ]
do
    read -p "Introduce el nombre de un fichero de $DIRPRUEBA: "$'\n>> ' FICHERO
    if [ $DIRSEGURIDAD/$FICHERO -a $FICHERO != "NO" ]
    then
        sudo chmod u-w $DIRSEGURIDAD/$FICHERO
        sudo chmod g+w $DIRSEGURIDAD/$FICHERO
    fi
done

sudo rm -rf $DIRPRUEBA/* 2>/dev/null
ls -l $PRUEBA > $DIRSHELLSCRIPT/quedan.txt
cat $DIRSHELLSCRIPT/quedan.txt