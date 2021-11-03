#!/bin/bash
clear
NOMBRE=""
while [ "$NOMBRE" = "" ]
do
    read -p "Introduce un nombre de usuario:"$'\n>> ' NOMBRE
    clear
done
PASSWD=$(grep -w ^"$NOMBRE" /etc/passwd)
if [ $? -ne 0 ]
then
    echo "El usuario introducido no existe"
else
    echo "Buenos dias $NOMBRE, tu usuario aparece en el sistema."
    LONG=$(env | wc -l)
    echo "El entorno tiene $LONG variables, que son:"
    for POS in $(seq 1 1 $LONG)
    do
        env | head -n $POS | tail -n 1
        sleep 1
    done
fi