#!/bin/bash
clear
DIRPRUEBA="$HOME/prueba"
DIRSEGURIDAD="$DIRPRUEBA/seguridad"
DIRSHELLSCRIPT="$PWD"
# Borrar el directorio recursivamente si existe
if [ -d $DIRPRUEBA ]
then
    rm -rf "$DIRPRUEBA"
fi
# Crear las subcarpetas
mkdir "$DIRPRUEBA"
cp $HOME/* $DIRPRUEBA 2>/dev/null #Ignorar posibles errores de recursividad
mkdir "$DIRSEGURIDAD"


ls "$DIRPRUEBA"