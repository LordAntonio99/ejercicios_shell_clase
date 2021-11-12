#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-11 12:20:27
#
source "funciones.sh"
if [ cfich2.txt ]
then
    rm cfich2.txt
fi
touch cfich2.txt
find / -name "*.[ch]" 2>/dev/null > cfich.txt
POS=1
while read
do
    cat cfich.txt | head -n $POS | tail -n 1 >> cfich2.txt
    POS=$[$POS+1]
done < cfich.txt