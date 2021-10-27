#!/bin/bash
# Ha de ejecutarse para que al finalizar, mate el terminal exec ./007.sh
ARCH=$(find / -name "*.[h,c]" 2>/dev/null)
LINEAS=$(echo "$ARCH" | wc -l )
POS=1
while [ $POS -le $LINEAS ]
do
    echo "$ARCH" | head -n $POS | tail -n 1 >> cfich.txt
    POS=$[$POS+1]
done