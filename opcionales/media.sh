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

POS=1
DOCUMENTO="datos.txt"
ALUMNOS=0
MEDIAEX1=0
MEDIAEX2=0
MEDIAEX3=0
MEDIAS=0
APTOS=0
echo -e "[\tNOMBRE\t\t|\tEX1\t|\tEX2\t|\tEX3\t|\tMEDIA\t|\tAPTO\t]"
echo "---------------------------------------------------------------------------------------------------------"
while read
do
    ALUMNOS=$[$ALUMNOS+1]
    ALUMNO=$(head -n $POS $DOCUMENTO | tail -n 1)
    NOMBRE=$(echo $ALUMNO | cut -d " " -f 1)
    EX1=$(echo $ALUMNO | cut -d " " -f 2)
    EX2=$(echo $ALUMNO | cut -d " " -f 3)
    EX3=$(echo $ALUMNO | cut -d " " -f 4)
    MEDIAEX1=$[$MEDIAEX1+$EX1]
    MEDIAEX2=$[$MEDIAEX2+$EX2]
    MEDIAEX3=$[$MEDIAEX3+$EX3]
    MEDIA=$[($EX1+$EX2+$EX3)/3]
    MEDIAS=$[$MEDIAS+$MEDIA]
    LONNOMB=$(expr length $NOMBRE)
    if [ $LONNOMB -le 7 ]
    then
        NOMBREIMP="\t$NOMBRE\t\t"
    else
        NOMBREIMP="\t$NOMBRE\t"
    fi
    if [ $MEDIA -ge 5 ]
    then
        APTO="SI"
        APTOS=$[$APTOS+1]
    else
        APTO="NO"
    fi
    echo -e "[$NOMBREIMP|\t $EX1\t|\t $EX2\t|\t $EX3\t|\t  $MEDIA\t|\t $APTO\t]"
    POS=$[$POS+1]
done < $DOCUMENTO
MEDIAEX1=$[$MEDIAEX1/$ALUMNOS]
MEDIAEX2=$[$MEDIAEX2/$ALUMNOS]
MEDIAEX3=$[$MEDIAEX3/$ALUMNOS]
MEDIAS=$[$MEDIAS/$ALUMNOS]
echo "---------------------------------------------------------------------------------------------------------"
echo -e "[\tTOTAL\t\t|\t $MEDIAEX1\t|\t $MEDIAEX2\t|\t $MEDIAEX3\t|\t  $MEDIAS\t|\t  $APTOS\t]"