#Script que borra un directorio del PATH
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional:quitar un directorio del PATH 
#Objetivo didactico: recorrer todos los directorios del PATH, para buscar el que introduce el usuario. Si lo encontramos, lo eliminamos del PATH.
#Key words: while-do-done; variable auxiliar; comillas inversas; comparar cadenas de caracteres; let
#!/bin/bash
echo "Introduzca directorio"
read varb
variable=1
nv=1
aux=""
while [ "$variable" != "" ]
do
	echo "El directorio numero $nv es : "
	variable=`echo $PATH | cut -d: -f$nv`
	echo $variable
	if [ "$variable" != "$varb" -a  "$variable" != "" ]
	then
		if [ "$aux" == "" ]
		then
			aux=$variable
		else
			aux=$aux:$variable
		fi
	fi
	let "nv=$nv+1"
done
PATH=$aux
echo "el path vale $PATH"

