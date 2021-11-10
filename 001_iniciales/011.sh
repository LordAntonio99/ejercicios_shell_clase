#!/bin/bash
# read de un fichero
# if no -e en $HOME o no -f
# pedir otro nombre hasta bien
# file del archivo y num intentos

function comprobarfichero {
    ARCHIVO=$HOME/$1
    if [ ! -e "$ARCHIVO" -o ! -f "$ARCHIVO" ]
    then
        return 1
    else
        return 0
    fi
}
COMPROBACION=1
INTENTO=0
while [ $COMPROBACION -eq 1 ]
do
    read -p "Introduce el nombre de un fichero valido: " FICHERO
    $(comprobarfichero $FICHERO)
    COMPROBACION=$(echo $?)
    INTENTO=$[$INTENTO+1]
done

FICHERO="$HOME/$FICHERO"
echo "Has realizado un total de $INTENTO intentos"
file $FICHERO