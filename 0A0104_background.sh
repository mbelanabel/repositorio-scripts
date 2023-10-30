#Script que ejecuta comandos basicos y crea un fichero con el contenido del directorio actual empleando un proceso en segundo plano (background), tambien muestra por pantalla el calendario del mes y del año que pasemos por parametro
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: crear un fichero con un listado del contenido del directorio en el que se ejecuta el script
#Objetivo didactico: primeros scripts con ordenes basicas, una de ellas con redireccionamiento y en background. Uso de parametros.
#Key words: >> (redireccionamiento), & (background), pipe, parametros 

#!/bin/bash
echo Hoy es
date
echo Hay
who | wc -l
echo usuarios conectados
whoami
echo El directorio actual es
pwd
echo Realiza un listado del contenido del directorio actual en background en un fichero llamado listado_c
ls -alFR >> /home/mbelanabel/listado_c &
echo El calendario del mes y del año en que nací es
cal $1 $2

