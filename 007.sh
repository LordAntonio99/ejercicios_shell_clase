#!/bin/bash
# @Author: Antonio Cintora
# @Date:   2021-11-10 11:36:52
# @Last Modified by:   Antonio Cintora
# @Last Modified time: 2021-11-13 13:26:05
#
# Ha de ejecutarse para que al finalizar, mate el terminal exec ./007.sh

clear

find / -name "*.[ch]" 2>/dev/null > cfich.txt

cat cfich.txt | more
