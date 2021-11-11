#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-10 12:19:08
#

source "funciones.sh"

ejecutando

PASSWD=$(grep "$USER" /etc/passwd)
MYGUID=$(grep "$USER" /etc/passwd | cut -d: -f4)
echo "Tu UID es: $UID"
echo "Tu GID es: $MYGUID"
echo "Tu linea del fichero /etc/passwd es:"
echo "$PASSWD"
echo "Tu directorio de conexion es: $HOME"
