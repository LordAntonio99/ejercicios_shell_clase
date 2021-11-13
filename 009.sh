#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:28:20
#

clear

DIR1=""
DIR2=""
while [ "$DIR1" = "" ]
do
    read -p "Introduce el nombre del primer directorio:"$'\n>> ' DIR1
    clear
done
while [ "$DIR2" = "" ]
do
    read -p "Introduce el nombre del segundo directorio:"$'\n>> ' DIR2
    clear
done
. 009_1.sh "$DIR1" "$DIR2"
DIR1=""
DIR2=""
while [ "$DIR1" = "" ]
do
    read -p "Introduce el nombre del primer archivo: "$'\n>> ' DIR1
    clear
done
while [ "$DIR2" = "" ]
do
    read -p "Introduce el nombre del segundo archivo: "$'\n>> ' DIR2
    clear
done
. 009_2.sh "$DIR1" "$DIR2"