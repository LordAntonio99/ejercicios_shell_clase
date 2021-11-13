#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-12 17:36:54
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-12 17:44:59

clear

if [ $# -eq 0 ]
then
    set $PWD $HOME /etc $(ps aux)
else
    echo "Error: se han pasado parametros."
    exit
fi


ls -l $1
ls $2 | wc -l
ls -l $3/*
echo ${14}