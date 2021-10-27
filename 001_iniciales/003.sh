#!/bin/bash
clear
NOMBREDIR="dir1"
NOMBREFICH="ficheros.txt"
DIR="$NOMBREDIR/$NOMBREFICH"
if [ ! -d "$NOMBREDIR" ]
then
    mkdir $NOMBREDIR
    echo "$NOMBREDIR se ha creado correctamente."
    touch $DIR
    ls /dev/t*[0-9] > $DIR
    cat /etc/passwd | sort -k6 >> $DIR
else
    echo "El directorio $NOMBREDIR ya existe."
fi
cat $DIR | more