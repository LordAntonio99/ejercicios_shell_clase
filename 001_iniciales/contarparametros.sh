#!/bin/bash
clear

NPARAMS=0
for PARA in $*
do
    NPARAMS=$[$NPARAMS + 1]
done
echo "Has introducido un total de $NPARAMS parametros"