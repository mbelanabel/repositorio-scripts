#Script que muestra el factorial de un numero pasado por parámetro
#Autor: Ana Isabel Miguel Bello
#Objetivo funcional: calcular el factorial de un numero
#Objetivo didactico: función factorial implementada con un while
#Key words: function; while; -ge; expr

#!/bin/bash

#Función factorial
function factorial(){
    fact=1;
    cont=1;
    while test $1 -ge $cont
    do
	fact=`expr $fact \* $cont`;
	cont=`expr $cont + 1`;
    done
    echo "El factorial de $1 es $fact";
}

#Cuerpo del script que llama a la función factorial
echo "Vamos a llamar a la función factorial"
factorial $1;

