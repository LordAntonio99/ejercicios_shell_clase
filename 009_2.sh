#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:41:51
#g
set "$DIR1" "$DIR2"
clear
env
echo "La variable DIR1 es: $DIR1"
echo "La variable DIR2 es: $DIR2"
sleep 4
ARCHIVO1=$(find $HOME -name "$DIR1" 2>/dev/null)
ARCHIVO2=$(find $HOME -name "$DIR2" 2>/dev/null)
if [ -e "$ARCHIVO1" ]
then
    file "$ARCHIVO1"
fi
if [ -e "$ARCHIVO2" ]
then
    file "$ARCHIVO2"
fi