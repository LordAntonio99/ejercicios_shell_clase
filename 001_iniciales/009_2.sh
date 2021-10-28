#!/bin/bash
set "$DIR1" "$DIR2"
clear
env
echo "La variable DIR1 es: $DIR1"
echo "La variable DIR2 es: $DIR2"
sleep 4
DIR1HOME=$(ls /home/$DIR1 2>/dev/null)
DIR1SUB=$(ls /home/*/$DIR1 2>/dev/null)
DIR2HOME=$(ls /home/$DIR2 2>/dev/null)
DIR2SUB=$(ls /home/*/$DIR2 2>/dev/null)
if [ -e "$DIR1HOME" ]
then
    file "$DIR1HOME"
elif [ -e "$DIR1SUB" ]
then
    file "$DIR1SUB"
fi
if [ -e "$DIR2HOME" ]
then
    file "$DIR2HOME"
elif [ -e "$DIR2SUB" ]
then
    file "$DIR2SUB"
fi