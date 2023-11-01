#Script que permite saber si un usuario concreto esta conectado al sistema.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional:Consultar si un usuario esta o no conectado al sistema
#Objetivo didactico: introducir el nombre de un usuario, evaluar el resultado de la ejecución de una orden anterior
#Key words: $?; read; grep

#!/bin/bash
echo "Introduzca el usuario que desea consultar"
read usuario
echo "El usuario que se desea consultar es $usuario"
#Una orden devuelve 0 si se ejecuta correctamente y evaluamos con $?
who -a | grep $usuario
if [ $? -eq 0 ]; then
	echo "El usuario $usuario esta conectado al sistema"
else
	echo "Los usuarios del sistema son:"
	cat /etc/passwd  | cut -f1 -d:  	
	echo "El usuario $usuario no esta conectado al sistema"
fi
 
