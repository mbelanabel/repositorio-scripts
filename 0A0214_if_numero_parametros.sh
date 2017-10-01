#Script que evalua el numero de parametros pasados.
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: conocer el numero de argumentos en la línea de orden.
#Objetivo didactico: evaluar numero de parametros.
#Key words: if; -gt; $#

#!/bin/bash
if [ $# -gt 0 ]
then
	echo "Número de argumentos en la línea de orden: $#"
        if [ $# -eq 1 ]
        then
	echo "Fenomenal ! Esperamos un unico parametro"
	if [ -f $1 ]; then
		echo "El parametro es un fichero"
		fichero=$HOME/parametro
		cp $1 $fichero
	else 
		echo "El parametro pasado no es un fichero"
		echo "Vuelve a intentarlo"
	fi
        else
	echo "debe pasar un unico parametro"
	
fi
else
	echo "No hay argumentos en la línea de orden"
fi
echo "Fin"

