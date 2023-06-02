#Crear un shell-script interactivo 
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: 
#Objetivo didáctico: array, if, or, for
#!/bin/bash
declare -a felinos=( tigre leon leona guepardo lince )
for felino in ${felinos[*]}
do
	echo "¿Está $felino en peligro de extinción?"
	read respuesta
	if [[ $respuesta = s || $respuesta = S || $respuesta = Si || $respuesta = si || $respuesta = SI ]]
	then
		echo "El/La $felino SI está en peligro de extinción"
	else
		echo "El/La $felino NO está en peligro de extinción"
	fi
done

