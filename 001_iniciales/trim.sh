#!/bin/bash
clear
TEXTOALCANZADO=0
ESPACIOS=0
STRING=""
case $2 in
    [Pp])
        for POS in $(seq 1 1 $(expr length "$1"))
        do
            CARACTER=$(expr substr "$1" $POS 1)
            if [ "$CARACTER" = " " -a $TEXTOALCANZADO -eq 0 ]
            then
                STRING=""
                ESPACIOS=$[$ESPACIOS + 1]
            else
                TEXTOALCANZADO=1
                STRING=$STRING$CARACTER
            fi
        done
        ;;
    [Ff])
        for POS in $(seq $(expr length "$1") -1 1)
        do
            CARACTER=$(expr substr "$1" $POS 1)
            if [ "$CARACTER" = " " -a $TEXTOALCANZADO -eq 0 ]
            then
                STRING=$STRING
                ESPACIOS=$[$ESPACIOS + 1]
            else
                TEXTOALCANZADO=1
                STRING=$CARACTER$STRING
            fi
        done
        ;;
    
    *)
        echo "Error al leer el parametro"
        ;;
esac

echo "$STRING"
echo "Se han eliminado un total de $ESPACIOS espacios"
