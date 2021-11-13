#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 17:45:13
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 18:05:06

clear

function menu {
    clear
    echo "INFORMACION DEL SISTEMA"
    echo ""
    echo "1.- Personas conectadas"
    echo "2.- Procesos activos del sistema"
    echo "3.- Procesos activos del usuario"
    echo "4.- Salir del shell"
    echo ""
}
menu
OPCION=1
while [ $OPCION -ne 4 ]
do
    read -p "Introduce la opcion a realizar: " OPCION
    case $OPCION in
    1)
        echo "Los usuarios conectados son: "
        who | cut -d " " -f 1
        read -p "Introduce cualquier tecla para volver. " TECLA
        menu
        ;;
    2)
        echo "Los procesos activos del sistema son: " OPCION
        ps aux
        read -p "Introduce cualquier tecla para volver. " TECLA
        menu
        ;;
    3)
        read -p "Nombre de usuario a comprobar: " USUARIO
        USUCON=$(who | grep "$USUARIO" | cut -d " " -f 1)
        if [ ! $USUCON ]
        then
            EXISTE=$(cut -d ":" -f 1 /etc/passwd | grep "$USUARIO")
            if [ ! $EXISTE ]
            then
                echo "El usuario no es reconocido en el sistema."
                read -p "Introduce cualquier tecla para volver." TECLA
                menu
            else
                echo "El usuario esta inactivo."
                read -p "Introduce cualquier tecla para volver." TECLA
                menu
            fi
        else
            ps -u "$USUCON"
            read -p "Introduce cualquier tecla para volver." TECLA
            menu
        fi
        ;;
    *)
        echo "Has introducido una opcion incorrecta."
        read -p "Introduce cualquier tecla para volver." TECLA
        menu
        ;;
    esac
done