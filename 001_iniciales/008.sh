#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:35:25
#
source "funciones.sh"

find / -name "*.[ch]" 2>/dev/null > cfich.txt
POS=1
while read
do
    cat cfich.txt | head -n $POS | tail -n 1
    POS=$[$POS+1]
done < cfich.txt