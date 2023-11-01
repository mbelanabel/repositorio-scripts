#Script que nos permite saber si se han pasado parametros o no, en caso afirmativo, el numero de parametros pasados
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: saber si se han pasado parametros, también llamados argumentos.
#Objetivo didactico: script que utiliza la estructura if-else
#Key words: if-else; -gt;  $#

#!/bin/bash
if [ $# -gt 0 ]
then
	echo "Numero de argumentos en la línea de orden: $#"
else
	echo "No hay argumentos en la liena de orden"
fi
echo "Fin"

