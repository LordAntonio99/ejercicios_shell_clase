#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:37:56
#
echo "Las variables de exportacion son: "
sleep 3
export
echo "Las variables de entorno son: "
sleep 3
printenv
sleep 3
DIR1PATH=$(find / -name "$1" -type d 2>/dev/null)
DIR2PATH=$(find / -name "$2" -type d 2>/dev/null)
if [ -d "$DIR1PATH" ]
then
    echo "$1 es un directorio, y sus archivos son:"
    ls -l "$DIR1PATH"
fi
if [ -d "$DIR2PATH" ]
then
    echo "$2 es un directorio, y sus archivos son:"
    ls -l "$DIR2PATH"
fi