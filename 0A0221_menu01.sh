#Script menú con un case de comandos basicos
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Mostrar un menu sencillo
#Objetivo didactico: Mostrar la sintaxis de un case
#Key words: case-esac; $HOME; 

#!/bin/bash
echo "0 Salir"
echo "1 Mostrar fecha y hora"
echo "2 Listar el directorio de conexión"
echo "3 Visualizar calendario"
echo "Introduzca su elección:"
read opcion
case $opcion in
	0) echo "Ciao";;
	1) date;;
	2) ls $HOME;;
	3) cal;;
	*) echo "Entrada no válida";;
esac
