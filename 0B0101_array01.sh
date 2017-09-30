#Script que crea un array y muestra su contenido
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: Mostrar por pantalla el contenido de un array 
#Objetivo didactico: declarar un array y recorrerlo consultando su contenido
#Key words: array; declare; for-do-done; expr; comillas inversas
#!/bin/bash
clear
contador=0
declare -a usuario=( Alberto Josh Roberto Laura Sergio Cristian Dani )
for valor in ${usuario[*]}
do
	echo "El usuario $contador vale $valor"
	contador=`expr $contador + 1`
done


