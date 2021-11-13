#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-13 13:04:13
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:13:12

USUARIOS=$(grep "^alu" /etc/passwd | cut -d: -f1)

for USUARIO in $USUARIOS
do
    sudo passwd -l $USUARIO 2>/dev/null
done