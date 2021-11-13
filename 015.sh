#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 15:04:00
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 17:37:05

function hablar {
    write $1 <<FIN
$2
FIN
}

USUARIO="pruebas"
DIRECTORIO=$(grep "^pruebas" /etc/passwd | cut -d ":" -f 6)
PERMISOS=$(ls -ld $DIRECTORIO | cut -d " " -f 1)
COMPROBAR=$(expr substr $PERMISOS 9 1)

while [ "$COMRPOBAR" != "w" ]
do
    PERMISOS=$(ls -ld $DIRECTORIO | cut -d " " -f 1)
    COMPROBAR=$(expr substr $PERMISOS 9 1)
    if [ "$COMPROBAR" = "-" ]
    then
        hablar $USUARIO "Por favor, activa permisos de escritura en tu directorio raiz."
        sleep 5
    else
        break
    fi
done

mkdir $DIRECTORIO/regalo
cp $HOME/l* $DIRECTORIO/regalo

hablar $USUARIO "Ya hemos termindado. Gracias por tu colaboracion."
