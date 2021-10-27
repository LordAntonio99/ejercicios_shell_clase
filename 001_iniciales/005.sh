# Si $2 = Cuelgan
## Bucle
## ls /bin/*[t,e] >> nombre.txt
## bucle cat nombre.txt

#!/bin/bash
if [ $# -ne 1 -a $# -ne 2 ]
then
    set "CANTIDAD" "CUELGAN"
fi
if [ -e "nombre.txt" ]
then
    rm "nombre.txt"
elif [ -e "numero.txt" ]
then
    rm "numero.txt"
fi
if [ "$1" = "CANTIDAD" ]
then
    TOTAL=$(ls /dev/tt* | wc -l)
    echo "Hay un total de $TOTAL dispositivos con los parametros definidos"
    echo "$TOTAL" > numero.txt
    echo "Introduciendo los siguientes nombres en el archivo:"
    for POS in $(seq 1 1 $TOTAL)
    do
            DISPO=$(ls /dev/tt* | head -n $POS | tail -n 1)
            echo "$DISPO"
            echo "$DISPO" >> nombre.txt
            sleep 1
    done
fi
if [ "$2" = "CUELGAN" ]
then
    TOTAL=$(find /dev -maxdepth 1 -name "*[t,e]" | wc -l)
    echo "Introduciendo los siguientes dispositivos al archivo: "
    for POS in $(seq 1 1 $TOTAL)
    do
        LINEA=$(find /dev -maxdepth 1 -name "*[t,e]" | head -n $POS | tail -n 1)
        echo "$LINEA"
        echo "$LINEA" >> nombre.txt
        sleep 1        
    done
fi
