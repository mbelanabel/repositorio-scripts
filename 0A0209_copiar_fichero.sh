#Script que hace una copia del fichero pasado por parametro en el directorio HOME. El nombre del nuevo fichero será guardar
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Copiar un fichero en el directorio HOME del usuario.
#Objetivo didactico:  Evaluar número de parametros y copiar el fichero pasado por parametro
#Key words: $HOME; $1; cp

#!/bin/bash
if [ $# = 1 ]
then
	if [ -f $1 ]
	then
		fichero=$HOME/guardar
		cp $1 $fichero
	else
		echo "Archivo no encontrado. Inténtelo otra vez"
	fi
else
	echo "Debe especificar como parámetro un nombre de archivo"
fi
cat $1

