#!/bin/bash
# Pedir DIR1 y DIR2
# LLamar a script 009_1.sh

DIR1=""
DIR2=""
while [ "$DIR1" = "" ]
do
    read -p "Introduce el nombre del primer directorio: "$'\n>> ' DIR1
    clear
done
while [ "$DIR2" = "" ]
do
    read -p "Introduce el nombre del segundo directorio: "$'\n>> ' DIR2
    clear
done

source 009_1.sh "$DIR1" "$DIR2"