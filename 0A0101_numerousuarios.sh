#Script que nos informa del numero de usuarios conectados
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: calcular el numero de usuarios conectados
#Objetivo didactico: primeros scripts
#Key words: pipe, cut, sort, uniq, wc, comillas inversas

#!/bin/bash
who -a | cut -f1 -d" " | sort | uniq | echo "Hay `wc -w` usuarios conectados"
