#Script que nos informa sobre el mayor de tres numeros
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: conocer el mayor de tres numeros.
#Objetivo didactico: analizar estructura de control, reflexionar sobre pseudocodigo.
#Key words: -gt; read

#!/bin/bash
echo “Introduzca tres números y mostraremos el mayor de ellos”
read num1 num2 num3
if [ $num1 -gt $num2 -a $num1 -gt $num3 ]
	then
	 echo “El mayor es num1: $num1”
	else
if [ $num2 -gt $num1 -a $num2 -gt $num3 ]
	then
	echo “El mayor es num2: $num2”
	else
	echo “El mayor es num3: $num3”
	fi
fi

