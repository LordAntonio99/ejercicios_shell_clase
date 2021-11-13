#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 18:34:17
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 19:07:39

NUMUSR=10
DIRCON="/home/cuentas"
GRUPO="gasi1n"

if [ ! -d "$DIRCON" ]
then
    sudo mkdir -p $DIRCON
fi

if [ ! $(grep "$GRUPO:" /etc/group) ]
then
    sudo groupadd $GRUPO
fi

for NUM in $(seq 1 $NUMUSR)
do
    LONDES=2
    LONGACT=$(expr length $NUM)
    while [ $LONGACT -lt $LONDES ]
    do
        NUM=0$NUM
        LONGACT=$[$LONGACT+1]
    done
    sudo useradd -m -g gasi1n --home-dir /home/cuentas/alu$NUM --shell /bin/sh alu$NUM
done
