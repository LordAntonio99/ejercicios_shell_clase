#!/bin/bash

## Mostrar las variables de exportacion
## Mostrar las variables de entorno

### Si el contenido de DIR1 es un directorio, mostrar los archivos que contenga
### Si el contenido de DIR2 es un directorio, mostrar los archivos que contenga

echo "Las variables de exportacion son: "
sleep 2
export
sleep 2
echo "Las variables de entorno son: "
sleep 2
printenv
sleep 2

if [ -d "$1" ]
then
    echo "$1 es un directorio, y sus archivos son:"
    ls "$1"
fi

if [ -d "$2" ]
then
    echo "$2 es un directorio, y sus archivos son:"
    ls "$2"
fi