#Script que evalua el numero de parametros pasados, si es uno y es un fichero, que nos diga el tipo de fichero que es.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: conocer el numero de argumentos en la línea de orden.
#Objetivo didactico: evaluar numero de parametros.
#Key words: /dev/null; 2>; 

#!/bin/bash
case $# in
0)	echo "No has introducido ningún parametro"
	echo "Se requiere un fichero pasado por parámetro"
	;;
1)	if ls -l $1 > /dev/null 2>/dev/null
	then
		if [ -d $1 ]; then
			echo "$1 es un directorio"
		else
			tipo=`ls -l $1 | cut -c1`
			case $tipo in
				-) echo "$1 es un fichero ordinario"
					;;
				l) echo "$1 es un enlace simbólico"
					;;
				b) echo "$1 es un dispositivo de bloque"
					;;
				c) echo "$1 es un dispositivo de caracteres"
					;;
				p) echo "$1 es una tuberia con nombre o pipe"
					;;
				s) echo "$1 es un socket"
					;;
				*) echo "$1 es un tipo de fichero desconocido!!"
					;;
				esac
		fi
	else
		echo "No encuentro el fichero $1"
	fi
	;;
*) echo "Has introducido demasiados parametros"
	;;
esac
