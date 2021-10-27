#!/bin/bash
clear
USER=$(whoami)
PASSWD=$(grep "$USER" /etc/passwd)
MYUID=$(grep "$USER" /etc/passwd | cut -d: -f3)
MYGUID=$(grep "$USER" /etc/passwd | cut -d: -f4)
HOME=$(grep "$USER" /etc/passwd | cut -d: -f6)
echo "Tu UID es: $MYUID"
echo "Tu GID es: $MYGUID"
echo "Tu linea del fichero /etc/passwd es:"
echo "$PASSWD"
echo "Tu directorio de conexion es: $HOME"
