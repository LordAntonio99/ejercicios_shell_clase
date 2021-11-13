#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-13 13:13:55
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:16:42

clear

USUARIOS=$(grep "^alu" /etc/passwd | cut -d: -f1)

for USUARIO in $USUARIOS
do
    DIRECTORIO=$(grep $USUARIO /etc/passwd | cut -d: -f6)
    sudo rm -r $DIRECTORIO/* 2>/dev/null
done