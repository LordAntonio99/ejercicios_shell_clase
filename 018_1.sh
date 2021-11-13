#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 18:08:16
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 18:10:33

cd /etc
if [ -e $1 ]
then
    cp $1 $HOME
    echo "Se ha copiado $1 al directorio de conexion."
else
    echo "El archivo no ha sido encontrado"
fi