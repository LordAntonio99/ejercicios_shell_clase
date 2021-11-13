#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-13 12:50:21
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:03:37

clear

BLOQUEADO=$(sudo passwd -Sa | grep -w "L" | cut -d " " -f1)
for USUARIO in $BLOQUEADO
do
    USUUID=$(grep "$USUARIO" /etc/passwd | cut -d ":" -f3)
    if [ $USUUID -gt 1000 2>/dev/null ]
    then
        COMPROBAR=$(grep "$USUARIO" /etc/passwd | cut -d ":" -f6)
        rm -rf $COMPROBAR/*
    fi
done