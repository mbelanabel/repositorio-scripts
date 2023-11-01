#Script que incluye un directorio en el PATH
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: añadir un directorio a la variable PATH
#Objetivo didactico: modificar el contenido de una variable del sistema operativo, conservando el valor anterior. Evaluar si el contenido de una variable es un directorio.
#Key words: -d; PATH=; $PATH

#!/bin/bash
echo "Introduzca el directorio a incluir en el path"
read directorio
if [ -d $directorio ]; then
	PATH=$PATH:$directorio
	echo "El valor del path es $PATH"
else
	echo "No es un directorio"
fi

