#Script que evalua si el fichero pasado es un directorio, y si el fichero tiene permiso de lectura.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: evaluar fichero y directorio.
#Objetivo didactico: trabajar con ficheros LINUX/UNIX
#Key words: if; -d; -r

#!/bin/bash
echo "Introduce el nombre de un fichero UNIX/LINUX"
read var1
if [ -d $var1 ]
then
	echo "$var1 es un directorio"
	ls $var1
else
	if  [ -r $var1 ]
	then
		more $var1
	else
		echo "fichero $var no podemos leerlo, no tiene permiso de lectura"
	fi
fi

