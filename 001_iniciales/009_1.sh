#!/bin/bash
echo "Las variables de exportacion son: "
sleep 2
export
echo "Las variables de entorno son: "
sleep 2
printenv
sleep 2
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