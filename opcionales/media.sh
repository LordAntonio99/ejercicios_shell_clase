#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:39:56
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:17:35

clear

POS=1

echo "[  NOMBRE  |   EX1   |   EX1   |   EX1   |   MEDIA   |   APTO   ]"
ls
while read
do
    ALUMNO=$(head -n $POS "datos.txt" | tail -n 1)
    POS=$[$POS+1]
done < $DOCUMENTO