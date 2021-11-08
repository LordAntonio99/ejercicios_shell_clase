#!/bin/bash
clear
TEXTOALCANZADO=0
ESPACIOS=0
STRING=""
function ejercicio {
    LONGITUD=$(expr length "$2")
    if [ "$1" = "inc" ]
    then
        SECUENCIA=$(seq 1 1 $LONGITUD)
    else
        SECUENCIA=$(seq $LONGITUD -1 1)
    fi
    for POS in "$SECUENCIA"
    do
        CARACTER=$(expr substr "$2" $POS 1)
        echo "$CARACTER"
        if [ "$CARACTER" = " " -a $TEXTOALCANZADO -eq 0 ]
        then
            STRING=""
            ESPACIOS=$[$ESPACIOS + 1]
            echo "$CARACTER"
        else
            TEXTOALCANZADO=1
            if [ $1 = "inc" ]
            then
                CONCAT=$STRING$CARACTER
            else
                CONCAT="$CARACTER$STRING"
            fi
            STRING=$CONCAT
        fi
        echo $STRING
    done
}

case $2 in
    [Pp])
        #for POS in $(seq 1 1 $(expr length "$1"))
        # for POS in $(misecuenciamola inc "$1")
        # do
        #     CARACTER=$(expr substr "$1" $POS 1)
        #     if [ "$CARACTER" = " " -a $TEXTOALCANZADO -eq 0 ]
        #     then
        #         STRING=""
        #         ESPACIOS=$[$ESPACIOS + 1]
        #     else
        #         TEXTOALCANZADO=1
        #         STRING=$STRING$CARACTER
        #     fi
        # done
        ejercicio "inc" "$1"
        ;;
    [Ff])
        # for POS in $(seq $(expr length "$1") -1 1)
        # do
        #     CARACTER=$(expr substr "$1" $POS 1)
        #     if [ "$CARACTER" = " " -a $TEXTOALCANZADO -eq 0 ]
        #     then
        #         STRING=$STRING
        #         ESPACIOS=$[$ESPACIOS + 1]
        #     else
        #         TEXTOALCANZADO=1
        #         STRING=$CARACTER$STRING
        #     fi
        # done
        ejercicio desc $1
        ;;
    
    *)
        echo "Error al leer el parametro"
        ;;
esac

echo "Se han eliminado un total de $ESPACIOS espacios"
