#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-13 06:23:50
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 06:43:14

clear

function menu {
    clear
    echo "INTRODUCE UNA DE LAS SIGUIENTES OPCIONES"
    echo ""
    echo "1. Borrar usuario"
    echo "2. Activar usuario"
    echo "3. Salir"
    echo ""
}
USU=""
while [ "$USU" = "" ]
do
    read -p "Introduce el nombre del usuario a comprobar: " USU
done

COMPROBAR=$(sudo passwd -S $USU 2>/dev/null | cut -d" " -f2 )

if [ "$COMPROBAR" == "L" ]
then
    menu
    read -p "Introduce la opcion a realizar: " TECLA
    case $TECLA in 
    1)
        sudo userdel -r $USU 2>/dev/null
        echo "$USU ha sido borrado del sistema."
        ;;
    2)
        sudo passwd -u $USU 2>/dev/null
        echo "$USU ha sido desbloqueado."
        ;;
    3)
        echo "Has salido correctamente"
        ;;
    *)
        echo "Has seleccionado una opcion incorrecta."
        ;;
    esac
else
    echo "El usuario NO existe o NO esta bloqueado."
fi