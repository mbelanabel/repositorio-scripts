#Script que de tres numeros, te dice cual es el mayor
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Comparar numeros introducidos por teclado.
#Objetivo didactico:  Uso de if anidados y operador AND
#Key words: -a; comillas inversas

#!/bin/bash
echo "introduzca tres números y mostraremos el mayor de ellos"
read num1 num2 num3
if [ "$num1" -gt "$num2" -a "$num1" -gt "$num3" ]
then
	echo "El mayor es num1: $num1"
else
	if [ "$num2" -gt "$num1" -a "$num2" -gt "$num3" ]
	then
		echo "El mayor es num2 $num2"
	else
		echo "El mayor es num3 $num3"
	fi
fi
