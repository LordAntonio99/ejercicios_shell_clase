#!/bin/bash
#       ___           ___                       ___           ___                       ___     
#      /  /\         /__/\          ___        /  /\         /__/\        ___          /  /\    
#     /  /::\        \  \:\        /  /\      /  /::\        \  \:\      /  /\        /  /::\   
#    /  /:/\:\        \  \:\      /  /:/     /  /:/\:\        \  \:\    /  /:/       /  /:/\:\  
#   /  /:/~/::\   _____\__\:\    /  /:/     /  /:/  \:\   _____\__\:\  /__/::\      /  /:/  \:\ 
#  /__/:/ /:/\:\ /__/::::::::\  /  /::\    /__/:/ \__\:\ /__/::::::::\ \__\/\:\__  /__/:/ \__\:\
#  \  \:\/:/__\/ \  \:\~~\~~\/ /__/:/\:\   \  \:\ /  /:/ \  \:\~~\~~\/    \  \:\/\ \  \:\ /  /:/
#   \  \::/       \  \:\  ~~~  \__\/  \:\   \  \:\  /:/   \  \:\  ~~~      \__\::/  \  \:\  /:/ 
#    \  \:\        \  \:\           \  \:\   \  \:\/:/     \  \:\          /__/:/    \  \:\/:/  
#     \  \:\        \  \:\           \__\/    \  \::/       \  \:\         \__\/      \  \::/   
#      \__\/         \__\/                     \__\/         \__\/                     \__\/    

                                                                                              
clear

MESES=("Ninguno" "Enero" "Febrero" "Marzo" "Abril" "Mayo" "Junio" "Julio" "Agosto" "Septiembre" "Octubre" "Noviembre" "Diciembre")

function formatoCorto {
    #DIA/MES/ANO
    FECHA=$(date)
    DIA=$(echo $FECHA | cut -d " " -f 2)
    MES=$(date +%D | cut -d "/" -f 1)
    MESNOM=${MESES[$MES]}
    ANO=$(echo $FECHA | cut -d " " -f 4)
    echo "$DIA/$MESNOM/$ANO"
}

function formatoLargo {
    FECHA=$(date)
    DIA=$(echo $FECHA | cut -d " " -f 2)
    MES=$(date +%D | cut -d "/" -f 1)
    MESNOM=${MESES[$MES]}
    ANO=$(echo $FECHA | cut -d " " -f 4)
    echo "Hoy estamos a dia $DIA del mes $MESNOM del ano $ANO."
}

if [ $# -eq 0 ]
then
    cal
elif [ $# -eq 1 -a $1 = "-c" -o $# -eq 1 -a $1 = "--corto" ]
then
    formatoCorto
elif [ $# -eq 1 -a $1 = "-l" -o $# -eq 1 -a $1 = "--largo" ]
then
    formatoLargo
else
    echo "Numero de parametros o caracteres invalido."
fi