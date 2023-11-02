#Script que utiliza una función que suma dos numeros
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: sumar dos numeros introducidos por teclado
#Objetivo didactico: funcion, operación matemática.
#Key words: function; variable local; expr; $?; return; read -p;

#!/bin/bash
clear
function suma(){
	local resultado
	read -p "Introduce el primer numero: " num1
	read -p "Introduce el segundo numero: " num2
	resultado=`expr $num1 + $num2`
	return $resultado
}
#----Cuerpo del script
echo "Llamo a la funcion suma"
suma
echo "El resultado es $?"

